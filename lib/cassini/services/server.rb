# frozen_string_literal: true

require 'json'
require 'sinatra'
require 'thin'

module Cassini
  class ThinBackend < ::Thin::Backends::TcpServer
    def initialize(host, port, opts)
      super(host, port)
      @ssl     = true
      @options = opts
    end
  end
  class Server < Sinatra::Base
    configure do
      set :environment, :production
      set :server, 'thin'
      set :logging, true
      mime_type :plain, 'text/plain'
      mime_type :json, 'application/json'
    end

    before do
      content_type :json
    end

    get '/' do
      request.methods.map { |m| m.to_s + "\n" }.to_json
    end
  end
end

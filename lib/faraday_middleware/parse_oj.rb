require 'faraday_middleware/response_middleware'

module FaradayMiddleware
  class ParseOj < ResponseMiddleware
    dependency 'oj'
    
    define_parser do |body|
      Oj.load(body) unless body.strip.empty?
    end
    
    VERSION = '0.1'
  end
end

Faraday.register_middleware :response, :oj => FaradayMiddleware::ParseOj

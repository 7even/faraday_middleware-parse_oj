require 'faraday_middleware/parse_oj'

describe FaradayMiddleware::ParseOj do
  before(:each) do
    @body = '{"a": 1, "b": 2}'
    @parsed_body = stub("Parsed body")
    
    @connection = Faraday.new do |builder|
      builder.response :parse_oj
      builder.adapter :test do |stub|
        stub.get('/url') do
          [200, {}, @body]
        end
      end
    end
  end
  
  it "parses the response body with Oj.load" do
    Oj.should_receive(:load).with(@body).and_return(@parsed_body)
    @connection.get('/url').body.should == @parsed_body
  end
end

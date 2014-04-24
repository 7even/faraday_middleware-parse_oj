require 'faraday_middleware/parse_oj'

describe FaradayMiddleware::ParseOj do
  before(:each) do
    @body = '{"a": 1, "b": 2}'
    @parsed_body = double("Parsed body")
    
    @connection = Faraday.new do |builder|
      builder.response :oj
      builder.adapter :test do |stub|
        stub.get('/url') do
          [200, {}, @body]
        end
      end
    end
  end
  
  it "parses the response body with Oj.load" do
    expect(Oj).to receive(:load).with(@body, mode: :compat).and_return(@parsed_body)
    expect(@connection.get('/url').body).to eq(@parsed_body)
  end
end

# FaradayMiddleware::ParseOj

A simple Faraday middleware that parses JSON responses. It is identical to `FaradayMiddleware::ParseJson` from `faraday_middleware` gem except that it uses `Oj.load` instead of `JSON.parse`.

## Installation

``` ruby
# Gemfile
gem 'faraday_middleware-parse_oj'
```

or

``` bash
$ gem install faraday_middleware-parse_oj
```

## Usage

The same as `FaradayMiddleware::ParseJson`:

``` ruby
require 'faraday_middleware/parse_oj'

connection = Faraday.new do |builder|
  builder.response :oj
  builder.adapter  Faraday.default_adapter
end

connection.get('http://example.com/some.json')
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

# Uptime

Ruby client library to work with [Uptime](https://github.com/fzaninotto/uptime)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'uptime'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install uptime

## Usage

```ruby
#!/usr/bin/env ruby

require 'uptime'

Uptime.configure do |config|
  config.api_endpoint = 'http://<your-ip>:<your-port>/'
  config.username = '<username>'
  config.password = '<password>'
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mohitsethi/uptime-api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

## Authors
- Mohit Sethi <mohit@sethis.in>

## Authors

Mohit Sethi < mohit@sethis.in >

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


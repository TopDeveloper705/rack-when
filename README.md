# Rack::When

Shortcut handler for performing tasks in specific environments. Specific
environments can be set to run specific sections of code. I wrote this
to handle rack-middleware and as such it works in a `config.ru` but you
could use it to run anything.

The order of precedence for env is `ENV['RACK_ENV']` or `ENV['RAILS_ENV']`
but it defaults to `development`.

## Usage

In your `config.ru` do

```Ruby
Rack::When.development do
  # Things you want done in development
  use DevelopmentMiddleware
end

Rack::When.production do
  # Things you want done in production
  use ProductionMetricMaker
end

run MyApplication
```

You can also specify the enviroment directly if you would prefer:

```Ruby
Rack::When.environment :custom_env do
  # My custom env code
end
```

## Installation

Add this line to your application's Gemfile:

    gem 'rack-when'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-when

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

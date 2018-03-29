# WebpackIntegrator

A custom Rails generator that does the minimum to start integrating JavaScript/Webpack
with Rails.  Look into [Webpacker](https://github.com/rails/webpacker) for a
more integrated solution.

## Known Issues

There might be incompatibility issue between Foreman gem and the latest version
of Thor.  If encountered, run bundle update to revert to earlier version of Thor
that works well with Foreman.

## Installation

Create a new Rails project

    $ rails new myapp

Add this line to your application's Gemfile:

```ruby
gem 'webpack_integrator'
```

And then execute:

    $ bundle

Run generator

    $ rails generate webpack_integrator:install

Notice the files and folders added to your rails directory.  This is what you
need to start developing front-end JS components  in a separate client directory
and bundle them using Webpack. 

Finally, insert the following line in app/views/layouts/application.html.erb
within the head tag

```ruby
<%= javascript_include_tag '/webpack/index-bundle.js' %>
```

To launch page, use foreman


    $ foreman start -f Procfie.dev

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/alwesam/webpack_integrator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the WebpackIntegrator project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/webpack_integrator/blob/master/CODE_OF_CONDUCT.md).

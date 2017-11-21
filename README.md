# Reapal

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/reapal`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'reapal'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install reapal

## Usage

TODO: Write usage instructions here

### logger

``` ruby
SuckerPunch.logger = Logger.new('sucker_punch.log')
SuckerPunch.logger # => #<Logger:0x007fa1f28b83f0>
```

* Note: If Reapal is being used within a Rails application, Reapal's logger is set to Rails.logger by default. *

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

** 建议 **
1. 使用 [fasterer](https://github.com/DamirSvrtan/fasterer) 来优化写的代码，怎么修改可以查看[这里](https://github.com/JuanitoFatas/fast-ruby)
2. 使用 [rubycritic](https://github.com/whitesmith/rubycritic) 来检测代码质量

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/reapal. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Reapal project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/reapal/blob/master/CODE_OF_CONDUCT.md).

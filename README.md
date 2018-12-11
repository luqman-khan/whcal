# Whcal

This Gem calculates diffence between two time and date value and outputs data according to the input

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'whcal'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install whcal

## Usage

```ruby
	include 'Whcal'

	diff_year(DateTime.now.next_year, DateTime.now) # 1.0
	diff_month(DateTime.now.next_year, Time.now+3600) # 12.065277777777778
	diff_day(Date.today+20, Date.today) #20.0
	diff_hour(DateTime.now.next_month, Date.today) # 744.0
	diff_minute(Time.now+60000, Date.today) #1440.0
	diff_second(Date.today, Date.today+5) # 432000.0

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/whcal. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


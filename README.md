# UrliMe [![Build Status](https://travis-ci.org/chiligumdev/urli_me.svg?branch=master)](https://travis-ci.org/chiligumdev/urli_me)

Lib to easily call [urli.me API](https://urli.me/)

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'urli_me'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install urli_me

## Usage

First of all, you need to sign in [urli.me](https://urli.me/) and then you need to get your credentials.
After you get both `key` and `pwd`, you can instantiate the class as in this example:

    client = UrliMe::Init.new(key: 'your-key', pwd: 'your-pwd')

## Links

After you have instantiate the class, to manipulate the API endpoints we provide 5 methods

### List all links

    response = client.all_links
    response.body
    
This method returns the entire response to urli.me call, the `.body` returns an array of hashes containing information for all links createad in your account 

### Get a specific link

    response = client.get_link(token_link)
    response.body

If token_link exists this call returns all information about the requested link.

### Create a link
In order to create a short link, you must pass as parameter the link you want to be shortened.

    response = client.create_link(link_url)
    response.body

This method returns all information about your just created link, such as token, short_url, original_url and so forth.

### Update an existent link
To update a link previously created, you must pass as parameters the token of your already created link and the new link.

    response = client.update_link(token_link, new_link_url)
    response.body

If the token is valid, this method returns all information about the updated link.

### Delete a link
If you want to delete a previous created link, you just need to pass the token of this link

    response = client.delete_link(token_link)
    response.body

If the token is valid, this method returns the message `{"msg": "deleted"}`

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/urli_me. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the UrliMe project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/urli_me/blob/master/CODE_OF_CONDUCT.md).

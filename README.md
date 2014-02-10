# Ganesha

Remember and share links with your team on a weekly basis.

## Installation

Add this line to your application's Gemfile:

    gem 'ganesha'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ganesha

## Usage

### Authentication:

TODO: define how to do this using clean architecture

### Saving a link:

	Ganesha.save_link({ url: 'http://myawesomelink.com', title: 'My awesome link' })

### Listing links from the current week:

	Ganesha.current_links

### Listing links from custom periods:

	Ganesha.links_between({ :from => <#Date>, :to => <#Date> })


## Contributing

1. Fork it ( http://github.com/<my-github-username>/ganesha/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

# Presento

A small library for presenters in a rails application.

## Installation

Add this line to your application's Gemfile:

    gem 'presento'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install presento

## Usage

Specify presento in your Gemfile and then you can create your presenters as

````
class MyPresenter > Presento::Base
  def awesome_method
    42
  end
end

Usage:

MyPresenter.present(my_object) do |my_object|
  # in this context my_object will be presented with an instance of MyPresenter
  my_object.awesome_method
end

````



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

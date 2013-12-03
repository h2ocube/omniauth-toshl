# OmniAuth::Toshl

An OmniAuth Strategy for Toshl.com

[![Gem Version](https://badge.fury.io/rb/omniauth-toshl.png)](http://badge.fury.io/rb/omniauth-toshl)
[![Build Status](https://travis-ci.org/h2ocube/omniauth-toshl.png)](https://travis-ci.org/h2ocube/omniauth-toshl)

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-toshl'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-toshl

## Usage

### Sinatra

```ruby
require 'omniauth'
require 'omniauth-toshl'

use Rack::Session::Cookie
use OmniAuth::Builder do
  provider :toshl, 'YOUR_CLIENT_ID', 'YOUR_CLIENT_SECRET'
end

get '/auth/:provider/callback' do
  # Do something with auth_hash
  redirect to('/')
end

def auth_hash
  request.env['omniauth.auth']
end
```

# Chatworkify

[![Gem Version](https://badge.fury.io/rb/chatworkify.svg)](https://badge.fury.io/rb/chatworkify)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chatworkify', require: false
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install chatworkify

## Usage

Require the gem in your `Capfile`:

    require 'capistrano/chatworkify'

## Configuration

### Puts `CHATWORK_API_TOKEN` into your ENV

- Export to your `bash`: `export CHATWORK_API_TOKEN=xxx`

- Add to `.env` if you're using `config` gem


### Puts `CHATWORK_ROOM_ID` into your ENV or custom in `config/deploy`

```ruby
# config/deploy.rb
...
set :chatwork_room_id, 'xxx'
...
```

### Copyright

©phunt

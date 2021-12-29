# Chatworkify

![Gem](https://img.shields.io/gem/v/chatworkify?color=%234cc61f&label=Gem%20version&logo=ruby&logoColor=red)
![Gem](https://img.shields.io/gem/dt/chatworkify?color=%2330c754&label=Downloads&logo=rubygems&logoColor=red)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/rs-phunt/chatworkify/Tests%20%F0%9F%A7%AA?label=Tests&logo=github)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/rs-phunt/chatworkify/Rubocop%20Lint?label=Rubocop&logo=github)

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

- Add to `.env` if you're using `dotenv` gem


### Puts `CHATWORK_ROOM_ID` into your ENV or custom in `config/deploy`

```ruby
# config/deploy.rb
...
set :chatwork_room_id, 'xxx'
...
```

### Copyright

©phunt

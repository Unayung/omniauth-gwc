# Omniauth::Gwc



## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-gwc', :git => 'git@git.codegreenit.com:omniauth-gwc'

And then execute:

    $ bundle

## Usage

0. Register client app in so called user-manager app using rails console
```
$ c = Client.new(:app_id => "APP_ID", :app_secret => "APP_SECRET")
$ c.save
```

1. Add config/initializers/omniauth.rb file and put code below in there:
```
module OmniAuth
  module Strategies
    class Gwc < OmniAuth::Strategies::OAuth2
      PROVIDER_URL = "http://my-awesome-provider.dev"
    end
  end
end

APP_ID = 'YOUR_REGISTERED_APP_ID' #ex 1
APP_SECRET = 'YOUR_REGISTERED_APP_SECRET' # ex 123qweasdzxc

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :gwc, APP_ID, APP_SECRET
end
```

2. Restart application and have fun
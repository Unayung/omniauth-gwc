# Omniauth::Gwc



## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-gwc', :git => 'git@git.codegreenit.com:omniauth-gwc'

And then execute:

    $ bundle

## Usage

1.Register client app in so called user-manager app using rails console
```
$ c = Client.new(:app_id => "APP_ID", :app_secret => "APP_SECRET")
$ c.save
```

2.Add config/initializers/omniauth.rb file and put code below in there:
```

APP_ID = 'YOUR_REGISTERED_APP_ID' #ex 1
APP_SECRET = 'YOUR_REGISTERED_APP_SECRET' # ex 123qweasdzxc

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :gwc, APP_ID, APP_SECRET, {:client_options => {
    :site => "http://user-manager.dev",
    :authorize_url => "http://user-manager.dev/auth/gwc/authorize",
    :access_token_url => "http://user-manager.dev/auth/gwc/access_token"
    }}
end
```

3.Restart application and have fun

4.You can see example app on git@git.codegreenit.com:client-app-example
1. New application - rails new sch_sys -d mysql --api
2. Set up the [env gem](https://github.com/bkeepers/dotenv) and file for db => environment variables
3. Set up [RSpec](https://github.com/rspec/rspec-rails) and [capybara](https://github.com/teamcapybara/capybara)=> Test Suite
4. Set Up [DeviseTokenAuth](https://github.com/lynndylanhurley/devise_token_auth)  => Authentication. Review common commands files on the procedure
   Devise Token Auth is based on [Device](https://github.com/plataformatec/devise) and [OmniAuth](https://github.com/omniauth/omniauth)
5. Uncomment the [rack-cors](https://github.com/cyu/rack-cors) gem to cater for token authentication
6. Bundle install and follow the instruction on rack-cors page on how to configure

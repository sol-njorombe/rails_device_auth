# Commands Cheat Sheet

Best resource use the `rails --help` utility

### Scaffolds
1. `rails g scaffold [model]` generate a scaffold with, [migration, model, controller, route, rspec test files]
2. `rails destroy scaffold [model_name]` destroy a scaffold

## Devise Token auth
[Here](https://github.com/lynndylanhurley/devise_token_auth) is the reference used for this set up

1. Run the generator ` rails g devise_token_auth:install user`
2. Generate User model first `rails g devise user`. Check through the migration file to ensure all required field are included
3. Migrate the model `rake db:migrate`
4. Generate views to open them for customization `rails g devise:views`
5. Set up the email environment variables in ./env

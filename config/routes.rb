Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :auths do
    resources :roles, except: [:show, :create, :edit, :update, :destroy]
  end

  namespace :sys_admin do
    resources :users, except: [:destroy]
    resources :roles, except: [:create, :destroy]
    resources :user_roles
  end

end

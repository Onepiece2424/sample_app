Rails.application.routes.draw do
  root 'pages#description'
  resources :pages do
    collection do
      get :description, :charts
    end
  end
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end

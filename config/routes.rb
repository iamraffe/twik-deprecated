Rails.application.routes.draw do

  constraints(Subdomain) do
    get '/' => 'groups#show'
  end

  root :to => "pages#index"

  # resources :menus do
  #   resources :templates
  # end
  match "/404", :to => "errors#not_found", :via => :all, as: 'not_found'
  match "/500", :to => "errors#internal_server_error", :via => :all, as: 'internal_server_error'
end

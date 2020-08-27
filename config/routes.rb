Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root :to => "homes#index"
resources :minivetmasks
resources :homes
resources :contacts
get '/minivet_exim903535' => 'contacts#minivet_exim903535'

end

Rails.application.routes.draw do

  root 'cameras#index'

  get '/cameras', to: 'cameras#index'

  get '/cameras/new', to: 'cameras#new'

  post '/cameras', to: 'cameras#create'

  get '/cameras/:id', to: 'cameras#show'

end
# frozen_string_literal: true
Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  get '/photos', to: 'photos#index'
  post '/photos', to: 'photos#create'
  get '/photos/:id', to: 'photos#show'
  put '/photos/:id', to: 'photos#update'
  delete '/photos/:id', to: 'photos#destroy'
end

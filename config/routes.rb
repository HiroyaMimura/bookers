Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  get 'index' => 'books#index'
  get 'show' =>'books#show'
  post 'books' => 'books#create'
  resources:lists
end

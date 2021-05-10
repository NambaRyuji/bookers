Rails.application.routes.draw do

resources :books
root to: 'homes#index'
get "books" => 'books#index'
post 'books' => 'books#create'
post 'books/:id' => 'books#create'
get 'books/:id' => 'books#show',    as: "books_show"
get 'books/:id/edit' => 'books#edit', as: "books_edit"
patch 'books/:id' => 'books#update', as: 'update_book'
put 'books/:id' => 'books#update'
delete 'books/:id'  => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # Read
  get 'articles', to: 'articles#index', as: :articles
  # Create an article
  # need page for a form
  get 'article/new', to: 'articles#new', as: :new_article
  # a place to send form and create instance
  post 'articles', to: 'articles#create'
  # read one task, prefix here to be singular
  get 'articles/:id', to: 'articles#show', as: :article
  # update/edit
  # page for a form
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  # a plce to send the form info and update the instance
  patch 'articles/:id', to: 'articles#update'
  # delete
  delete 'articles/:id', to: 'articles#destroy'
end

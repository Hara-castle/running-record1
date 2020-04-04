Rails.application.routes.draw do
  get 'toppages/index'
  root to: 'runs#index'
  
  resources :runs
  
=begin
  # CRUD
  get  'runs/:id', to: 'runs#show'
  post 'runs', to: 'runs#create'
  put 'runs/:id', to: 'runs#update'
  delete 'runs/:id', to: 'runs#destroy'
  
  # index: showの補助ページ
  get 'runs', to: 'runs#index'
  
  # new: 新規作成ようのフォームページ
  get 'runs/new', to: 'runs#new'
  
  # edit: 更新ようのフォームページ
  get 'runs/:id/edit', to: 'runs#edit'
=end

end

Rails.application.routes.draw do
  root :to => 'welcome#index'
  get 'welcome/index'
  get 'aulas/index'
  get 'aulas/new'
end

Rails.application.routes.draw do
  get 'aulas/index'
  root :to => 'welcome#index'
  get 'welcome/index'
end

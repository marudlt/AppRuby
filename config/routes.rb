Rails.application.routes.draw do
  resources :cursos
  root :to => 'welcome#index'
  get 'welcome/index'
  get 'aulas/index'
  get 'aulas/new'
  resources :aulas
end

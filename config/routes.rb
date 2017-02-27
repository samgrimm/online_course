Rails.application.routes.draw do


  devise_for :users
  resources :cursos do
    resources :seccos do
      resources :aulas
    end
  end
  root to: 'static_pages#inicio'
  get 'sobre', to: 'static_pages#sobre'
  get 'contato', to: 'static_pages#contato'
  get 'catalogo', to: 'static_pages#catalogo'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

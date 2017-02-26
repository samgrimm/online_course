Rails.application.routes.draw do


  resources :cursos do
    resources :seccos do
      resources :aulas
    end
  end
  root to: 'static_pages#inicio'

  get 'static_pages/sobre'

  get 'static_pages/contato'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

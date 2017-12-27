Rails.application.routes.draw do
  resources :m_cargos
  devise_for :m_usuarios
  resources :m_clientes
  resources :m_perfiles
  resources :m_empleados
  resources :m_usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

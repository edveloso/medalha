Rails.application.routes.draw do
  resources :participante_atividades
  resources :usuarios
  resources :atividade_usuarios
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  get "atividades_usuarios", to: 'atividade_usuario#atividade_usuario'

end

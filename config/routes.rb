# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'tasks#index'

  resources :tasks
end

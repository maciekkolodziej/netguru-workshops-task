Rails.application.routes.draw do
  devise_for :users

  resources :students do
    get :subjects
  end

  get 'reports/subjects', as: :report_subjects

  resources :teachers do
    get :subjects
  end
  resources :visitors, only: :index

  root to: 'visitors#index'
end

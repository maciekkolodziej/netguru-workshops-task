Rails.application.routes.draw do
  devise_for :users

  resources :students do
    get :subjects
  end

  get 'reports/subjects', as: :report_subjects

  resources :teachers
  resources :visitors, only: :index

  root to: 'visitors#index'
end

StackOverflowClone::Application.routes.draw do
  root to: "questions#index"
  devise_for :users
  resources :questions, :only => [:index, :show, :new, :create] do
    resources :answers, :only => [:new, :create]
  end
end

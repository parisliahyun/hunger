Hunger::Application.routes.draw do
    resources :tributes, only: [:index, :show]
  root 'welcome#index'
end

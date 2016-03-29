Rails.application.routes.draw do
#    devise gem, user authentication 
     devise_for :users
     get 'welcome/index'
     
     resources :docs
     
#   if logged in go to authenticated root
     authenticated :user do
          root "docs#index", as: "authenticated_root"
     end
     
     root 'welcome#index'
end

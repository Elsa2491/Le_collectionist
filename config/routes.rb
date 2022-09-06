Rails.application.routes.draw do
  scope "(:locale)", locale: /fr|en/ do
    devise_for :users
    resources :shops, only: [:index, :edit, :update]
    get "/change_locale", to: "sites#change_locale"
    root to: 'shops#index'
  end
end

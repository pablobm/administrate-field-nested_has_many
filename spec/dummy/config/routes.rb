Rails.application.routes.draw do
  resources :schools
  namespace :foo do
    resources :students
  end

  namespace :admin do
    root to: redirect("/admin/schools")
    resources :schools
    namespace :foo do
      resources :students
    end
  end
end

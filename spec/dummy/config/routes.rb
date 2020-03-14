Rails.application.routes.draw do
  root to: redirect("/admin/schools")
  namespace :admin do
    root to: redirect("/admin/schools")
    resources :schools
    resources :students
  end
end

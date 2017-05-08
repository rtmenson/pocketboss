Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/",{:controller => "pages", :action => "home"})
  get("/redirect", {:controller => "pages", :action => "redirect"})
  get("/profile", {:controller => "pages", :action => "profile"})
end

Rails.application.routes.draw do
  root "top#index"

  get "/about" => "top#about", as: "about"
  
  1.upto(18) do |n|
    get "home/step#{n}(/:name)" => "home#step#{n}"
  end
end

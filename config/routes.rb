Rails.application.routes.draw do
	namespace :api do 
		resources :businesses, only:[:index, :show]
	end
end

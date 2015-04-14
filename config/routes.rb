Rails.application.routes.draw do

root "bicycles#home"
get "bicycles" => "bicycles#home"
get "bicycles/new" => "bicycles#new", as: :new
get "bicycle/:id/edit" => "bicycles#edit", as: :edit_bicycle
post "bicycles" => "bicycles#create"
patch "bicycle/:id" => "bicycles#update"
delete "bicycle/:id" => "bicycles#destroy"
get "bicycle/:id" => "bicycles#show", as: :bicycle

end

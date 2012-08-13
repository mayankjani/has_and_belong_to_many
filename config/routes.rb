HabtmApp::Application.routes.draw do
  resources :resources

  resources :lessons

  match 'tagged' => 'resources#tagged', :as => 'tagged'
  match 'tagged' => 'lessons#tagged', :as => 'tagged'
  
end

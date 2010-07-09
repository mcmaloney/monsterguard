ActionController::Routing::Routes.draw do |map|
  map.connect '/support', :controller => 'main_pages', :action => 'support'
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

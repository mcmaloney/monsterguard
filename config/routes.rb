ActionController::Routing::Routes.draw do |map|
  map.connect '/support', :controller => 'main_pages', :action => 'support'
  map.connect '/send_support_message', :controller => 'main_pages', :action => 'send_support_message', :conditions => { :method => :post }
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

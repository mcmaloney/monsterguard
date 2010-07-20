ActionController::Routing::Routes.draw do |map|
  map.support '/support', :controller => 'main_pages', :action => 'support', :conditions => { :method => :get }
  
  map.send_support_message '/send_support_message', :controller => 'main_pages', :action => 'send_support_message', :conditions => { :method => :post }
  
  map.root :controller => 'main_pages', :action => 'home'
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

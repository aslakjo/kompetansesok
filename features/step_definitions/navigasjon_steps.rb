Gitt /^at jeg er på hovedsiden$/ do
  visit root_path
end

Gitt /^at jeg er på læreplan søkesiden$/ do
  visit laereplansok_index_path
end

Naar /jeg klikker "(.+)"/ do |knapp|
  click_button knapp
end

Gitt /^at jeg ser på hovedområdet med uuid (.+)$/ do |uuid|
  visit url_for(:controller => :hovedomraade, :action => :show, :id => uuid)
end



Saa /^skal jeg bli tatt til hovedsiden$/ do
  request.path_parameters[:controller].should == "sok"
  request.path_parameters[:action].should == "index"
end

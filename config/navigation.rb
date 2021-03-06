# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  
  navigation.items do |primary|
    primary.dom_class = 'nav navbar-nav'
    primary.item :hbutton, 'Home', sheets_path
    primary.item :gamebutton, 'Games', games_path, :if => Proc.new{ user_signed_in? }
    primary.item :profilebutton, 'Profile', edit_user_registration_path, :if => Proc.new{ user_signed_in? }
    primary.item :logbutton, 'Login', new_user_session_path, :unless => Proc.new{ user_signed_in? }
    primary.item :regbutton, 'Signup', new_user_registration_path, :unless => Proc.new{ user_signed_in? }
    primary.item :outbutton, 'Signout', destroy_user_session_path, :method => :delete, :if => Proc.new{ user_signed_in? }
    
  end

end

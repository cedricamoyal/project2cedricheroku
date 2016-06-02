User.destroy_all

cedric = User.create :name => 'Cedric', :email => 'cedric@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :admin => true

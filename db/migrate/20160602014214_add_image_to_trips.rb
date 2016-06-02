# project2cedric $ rails generate migration AddImageToTrips image:text

class AddImageToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :image, :text
  end
end

# project2cedric $ rake db:migrate

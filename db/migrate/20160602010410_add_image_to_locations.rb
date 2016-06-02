# project2cedric $ rails generate migration AddImageToLocations image:text

class AddImageToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :image, :text
  end
end

# project2cedric $ rake db:migrate

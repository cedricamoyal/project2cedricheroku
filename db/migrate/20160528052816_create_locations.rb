# project2cedric $ rails generate model Location --skip

class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|

      t.text :name
      t.text :population
      t.text :area

    end
  end
end

# project2cedric $ rake db:migrate
# project2cedric $ annotate
# project2cedric $ rails generate controller Locations index new show edit

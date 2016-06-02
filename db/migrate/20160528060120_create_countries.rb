# project2cedric $ rails generate model Country --skip

class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|

      t.text :name
      t.integer :location_id
      t.text :capitalCity
      t.text :currency
      t.text :population
      t.text :area
      t.text :popDensity
      t.text :flag
      t.text :visa
      t.text :capitalLatitude
      t.text :capitalLongitude


    end
  end
end

# project2cedric $ rake db:migrate
# project2cedric $ annotate
# project2cedric $ rails generate controller Countries index new show edit

# project2cedric $ rails generate migration AddLanguageToCountries language:text
# project2cedric $ rake db:migrate

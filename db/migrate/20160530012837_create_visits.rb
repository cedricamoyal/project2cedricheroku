# project2cedric $ rails generate model Visit --skip

class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|

      t.text :name
      t.integer :country_id
      t.integer :theme_id

      t.text :description
      t.text :image

      t.text :visitLatitude
      t.text :visitLongitude

    end
  end
end

# project2cedric $ rake db:migrate
# project2cedric $ annotate
# project2cedric $ rails generate controller Visits index new show edit

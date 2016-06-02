# project2cedric $ rails generate model Trip --skip

class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|

      t.text :name
      t.text :description
      t.date :startDate
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

# project2cedric $ rake db:migrate
# project2cedric $ annotate
# project2cedric $ rails generate controller Trips index new show edit

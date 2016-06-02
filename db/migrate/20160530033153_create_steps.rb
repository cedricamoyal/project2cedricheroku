# project2cedric $ rails generate model Step --skip

class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|

      t.text :name
      t.integer :trip_id
      t.integer :visit_id
      t.text :duration
      t.text :position

      t.timestamps null: false
    end
  end
end

# project2cedric $ rake db:migrate
# project2cedric $ annotate
# project2cedric $ rails generate controller Steps index new show edit

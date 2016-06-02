# project2cedric $ rails generate model Theme --skip

class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|

      t.text :name
      t.text :description

    end
  end
end

# project2cedric $ rake db:migrate
# project2cedric $ annotate

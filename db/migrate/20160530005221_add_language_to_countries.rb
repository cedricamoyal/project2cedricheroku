class AddLanguageToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :language, :text
  end
end

# project2cedric $ rails generate migration AddLanguageToCountries language:text
# project2cedric $ rake db:migrate

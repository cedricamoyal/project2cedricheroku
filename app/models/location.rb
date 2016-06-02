# project2cedric $ rails generate model Location --skip

# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  name       :text
#  population :text
#  area       :text
#

class Location < ActiveRecord::Base
  has_many :countries
  has_many :visits, :through => :countries
end

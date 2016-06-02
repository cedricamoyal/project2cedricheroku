# == Schema Information
#
# Table name: countries
#
#  id               :integer          not null, primary key
#  name             :text
#  location_id      :integer
#  capitalCity      :text
#  currency         :text
#  population       :text
#  area             :text
#  popDensity       :text
#  flag             :text
#  visa             :text
#  capitalLatitude  :text
#  capitalLongitude :text
#  language         :text
#

class Country < ActiveRecord::Base
  belongs_to :location
  has_many :visits
  has_many :steps, :through => :visits
end

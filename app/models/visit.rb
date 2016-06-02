# == Schema Information
#
# Table name: visits
#
#  id             :integer          not null, primary key
#  name           :text
#  country_id     :integer
#  theme_id       :integer
#  description    :text
#  image          :text
#  visitLatitude  :text
#  visitLongitude :text
#

class Visit < ActiveRecord::Base
  belongs_to :country
  belongs_to :theme
  has_many :steps
end

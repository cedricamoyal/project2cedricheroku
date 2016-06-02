# project2cedric $ rails generate model Trip --skip

# == Schema Information
#
# Table name: trips
#
#  id          :integer          not null, primary key
#  name        :text
#  description :text
#  startDate   :date
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Trip < ActiveRecord::Base
  belongs_to :user
  has_many :steps
  has_many :visits, :through => :steps
end

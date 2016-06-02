# == Schema Information
#
# Table name: steps
#
#  id         :integer          not null, primary key
#  name       :text
#  trip_id    :integer
#  visit_id   :integer
#  duration   :text
#  position   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Step < ActiveRecord::Base
  belongs_to :trip
  belongs_to :visit
end

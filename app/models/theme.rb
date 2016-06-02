# == Schema Information
#
# Table name: themes
#
#  id          :integer          not null, primary key
#  name        :text
#  description :text
#

class Theme < ActiveRecord::Base
  has_many :visits
  has_many :steps, :through => :visits
end

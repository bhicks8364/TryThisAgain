class Company < ActiveRecord::Base
  has_many :users
  has_many :trainings
  has_many :records, :through => :users

end

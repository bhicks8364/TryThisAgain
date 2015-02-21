class Record < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  has_attached_file :file, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

end

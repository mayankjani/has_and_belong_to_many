class Resource < ActiveRecord::Base
  attr_accessible :title, :tag_list, :file
  has_attached_file :file, :styles => { 
                              :thumb => "100x100#",
                              :normal => "600x600>", 
                              },
                              :url => "/system/resources/:id/:style.:extension",
                              :path => "#{Rails.root}/public/system/resources/:id/:style.:extension"
  acts_as_taggable_on :tags
  has_and_belongs_to_many :lessons
end

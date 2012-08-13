class Lesson < ActiveRecord::Base
  attr_accessible :description, :title, :tag_list, :resource_ids
  acts_as_taggable_on :tags
  has_and_belongs_to_many :resources
end

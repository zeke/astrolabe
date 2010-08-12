class Page < ActiveRecord::Base
  
  has_friendly_id :title, :use_slug => true
  validates_presence_of :title, :body

end

class Comment < ActiveRecord::Base
  belongs_to :pages
end

class Pages < ActiveRecord::Base
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
 
  has_many :comments
end
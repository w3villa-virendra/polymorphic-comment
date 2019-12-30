class Comment < ApplicationRecord  
   belongs_to :resource, polymorphic: true
    
   has_many :replies, class_name: "Comment",
	foreign_key: :parent_id, dependent: :destroy 
end

class Blog < ApplicationRecord
	belongs_to :user
	has_many :comments , as: :resource, dependent: :destroy
	has_many :likes, dependent: :destroy

	validates_presence_of :body, :title

	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

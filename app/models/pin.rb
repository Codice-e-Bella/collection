class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, style: { medium: "300X300>", large: "600X600>" }
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end

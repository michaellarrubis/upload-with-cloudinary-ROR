class Blog < ApplicationRecord
	has_attached_file 	:image, 
						styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png",
						:path => ':id/:style/:filename',
						:storage => :cloudinary,
  						:cloudinary_credentials => Rails.root.join("config/cloudinary.yml")
  	
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

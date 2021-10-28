class Food < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :orders    
end

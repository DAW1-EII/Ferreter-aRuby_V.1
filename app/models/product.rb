class Product < ApplicationRecord
  belongs_to :category
  mount_uploader :picture, PictureUploader

  def self.search(search)
    if(search)
        where(["name LIKE?","%#{search}%"])
    else
        all
    end
  end
end
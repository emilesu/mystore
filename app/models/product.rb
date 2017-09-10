class Product < ApplicationRecord
  # 校验
  validates :title, presence: true

  # 挂上图片上传
  mount_uploader :image, ImageUploader
end

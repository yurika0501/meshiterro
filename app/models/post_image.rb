class PostImage < ApplicationRecord

  has_one_attached :image

  #userモデルとの関連付け
  belongs_to :user
end

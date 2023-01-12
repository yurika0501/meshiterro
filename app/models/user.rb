class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #ユーザーはたくさん投稿ができる記述とユーザーが垢消ししたら投稿も一緒に消える記述
  has_many :post_images, dependent: :destroy

end

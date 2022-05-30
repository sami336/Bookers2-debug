class Book < ApplicationRecord
  
  has_one_attached :profile_image
  belongs_to :user
  has_many :favorites, dependent: :destroy
  
  validates :title, presence:true, length:{minimum:1}
  validates :body, presence:true, length:{maximum:200}
  
  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
end

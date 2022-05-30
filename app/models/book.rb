class Book < ApplicationRecord
  before_action :authenticate_user!
  belongs_to :user
  has_one_attached :profile_image

  validates :title, presence:true, length:{minimum:1}
  validates :body, presence:true, length:{maximum:200}
end

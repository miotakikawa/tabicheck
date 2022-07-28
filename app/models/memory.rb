class Memory < ApplicationRecord

  belongs_to :user

  attachment :image_tag

  validates :title, presence: true
  validates :body, presence: true,  length: { maximum: 200}
end

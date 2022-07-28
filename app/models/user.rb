class User < ApplicationRecord
  has_secure_password validations: true

  validates :email, presence: true, uniqueness: true

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.encrypt(token)
    Digest::SHA256.hexdigest(token.to_s)
  end

  has_many :memories, dependent: :destroy
end

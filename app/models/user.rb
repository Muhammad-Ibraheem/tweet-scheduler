class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: true
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be valid email" }
end

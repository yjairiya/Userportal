class User < ApplicationRecord

  has_secure_password
  validates :username, presence: true, uniqueness: true, length: { in: 4..20 } 
  
  validates :email, presence: true, uniqueness: true
  validates :password , presence: true, length: { in: 6..12 }
  # validates :password_digest, presence: true, length: { in: 6..12 }

end
#   has_many :posts
# has_many :comments

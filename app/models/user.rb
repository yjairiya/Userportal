class User < ApplicationRecord
  #has_secure_password
  # has_secure_password

  validates :username, presence: true, uniqueness: true, length: { in: 4..20 } 
  
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :password, presence: true, length: { in: 6..12 }
           
end

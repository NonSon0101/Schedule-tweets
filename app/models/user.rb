# email:string
# password_digest:string
#
# password_digest:string virtual
# password_coonfirmation:string virtual
class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, format: { with: /\A[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\z/, message: "must be a valid email format" }
    validates :password, presence: true, length: { minimum: 6 }, if: :password
end
  
  
class Student < ActiveRecord::Base
validates :name,   :presence => "true"
 validates :phone_no, :presence => true, format: { with: /\A\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})\Z/,
message: " Phone numbers must be in xxx-xxx-xxxx format" }
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
end

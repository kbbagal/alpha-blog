class User < ApplicationRecord
  validates :username, uniqueness: {casesensitive: false}, presence: true, length: {minimum: 6, maximum: 25}
  has_many :articles, dependent: :destroy
  has_secure_password

  def full_name
    return first_name + " " + last_name if first_name || last_name

    "Anonymous"
  end
end

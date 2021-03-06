class User < ApplicationRecord

  has_many :post_questions

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :uid, presence: true,  uniqueness: true
  validates :email, presence: true,  uniqueness: true, email: true


end

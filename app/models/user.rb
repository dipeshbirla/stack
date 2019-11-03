class User < ApplicationRecord
  before_save :capitalize_name
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :tags, as: :tagable
  has_many :answers, through: :posts
  serialize :address, Array

def capitalize_name
  self.username = self.username.titlecase
end
end

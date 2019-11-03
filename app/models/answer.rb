class Answer < ApplicationRecord
	belongs_to :post
	has_many :comments, as: :commentable
	has_many :votes, as: :votable
end

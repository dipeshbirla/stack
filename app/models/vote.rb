class Vote < ApplicationRecord
	belongs_to :votable,polymorphic: true
	enum voted: [:default, :like, :dislike]
end

class Category < ActiveRecord::Base
	attr_accessor :rest
  has_many :rests

  validates :name, presence: true
end
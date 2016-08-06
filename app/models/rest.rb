class Rest < ActiveRecord::Base
  attr_accessor :rest
  belongs_to :user
  belongs_to :category

  validates :name, presence: true
  validates :address, presence: true
  validates :user_id, presence: true
end
 
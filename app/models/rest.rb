class Rest < ActiveRecord::Base
  attr_accessor :rest
  belongs_to :user
end
 
class Contest < ActiveRecord::Base
	
dragonfly_accessor :image
has_many :charges
belongs_to :user

end

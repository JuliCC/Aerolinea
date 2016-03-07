class Pilot < ActiveRecord::Base
	has_many :schedule
	has_many :aeroplanes, through: :schedule
end

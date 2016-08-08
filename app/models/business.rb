class Business < ApplicationRecord
	# validate the uuid of each business is present and unique
	validates :uuid, presence: true, uniqueness: true
end

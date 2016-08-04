class Business < ApplicationRecord
	validates :uuid, presence: true, uniqueness: true
end

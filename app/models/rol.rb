class Rol < ApplicationRecord
	belongs_to :user
	belongs_to :area
end

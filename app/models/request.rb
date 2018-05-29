class Request < ApplicationRecord
	belongs_to :user
	has_many :type_requests
	has_many :adjuncts
end

class TypeRequest < ApplicationRecord
  belongs_to :request
  has_one :parameter
end

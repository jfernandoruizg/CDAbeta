class Flight < ApplicationRecord
belongs_to :pilot
belongs_to :airplane
end

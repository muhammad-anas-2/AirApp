class Hostel < ApplicationRecord
  has_many :addresses, as: :notable
end

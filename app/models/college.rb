class College < ApplicationRecord
  has_many :addresses, as: :notable
end

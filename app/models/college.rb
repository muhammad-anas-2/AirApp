class College < ApplicationRecord
  has_many :addresses, as: :notable
  has_many :teachers
  has_one :admin
end

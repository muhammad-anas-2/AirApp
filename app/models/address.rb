class Address < ApplicationRecord
  belongs_to :notable, polymorphic: true
end

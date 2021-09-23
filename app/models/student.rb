class Student < ApplicationRecord
  has_many :addresses, as: :notable
  has_many :student_courses
  has_many :courses, through: :student_courses
end

class Student < ApplicationRecord
  belongs_to :user
  has_many :student_teachers
	has_many :teachers, through: :student_teachers
	has_many :current_teachers,-> {where(student_teachers: {year: Time.now.year})}, through: :student_teachers
end

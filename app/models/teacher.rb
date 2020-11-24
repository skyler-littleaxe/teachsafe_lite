class Teacher < ApplicationRecord
  belongs_to :user
  has_many :student_teachers
	has_many :students, through: :student_teachers
	has_many :current_students,-> {where(student_teachers: {year: Time.now.year})}, through: :student_teachers
end

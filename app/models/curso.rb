class Curso < ApplicationRecord
  has_many :seccos

  belongs_to :instructor, class_name: "Instructor"
  has_many :enrollments
  has_many :students, class_name: "Student", through: :enrollments
end

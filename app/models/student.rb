class Student < User
  has_many :enrollments
  has_many :cursos, through: :enrollments
end

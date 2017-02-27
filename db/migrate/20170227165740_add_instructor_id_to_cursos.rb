class AddInstructorIdToCursos < ActiveRecord::Migration[5.0]
  def change
    add_column :cursos, :instructor_id, :integer
  end
end

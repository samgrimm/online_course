class CreateEnrollments < ActiveRecord::Migration[5.0]
  def change
    create_table :enrollments do |t|
      t.integer :student_id
      t.integer :curso_id

      t.timestamps
    end
  end
end

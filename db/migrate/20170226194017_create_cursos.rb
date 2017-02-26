class CreateCursos < ActiveRecord::Migration[5.0]
  def change
    create_table :cursos do |t|
      t.string :titulo
      t.text :ementa

      t.timestamps
    end
  end
end

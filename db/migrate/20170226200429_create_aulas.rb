class CreateAulas < ActiveRecord::Migration[5.0]
  def change
    create_table :aulas do |t|
      t.string :titulo
      t.text :conteudo
      t.text :referencias
      t.references :secco, foreign_key: true

      t.timestamps
    end
  end
end

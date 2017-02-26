class CreateSeccos < ActiveRecord::Migration[5.0]
  def change
    create_table :seccos do |t|
      t.string :titulo
      t.text :resumo
      t.references :curso, foreign_key: true

      t.timestamps
    end
  end
end

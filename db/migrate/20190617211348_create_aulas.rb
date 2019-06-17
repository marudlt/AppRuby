class CreateAulas < ActiveRecord::Migration[5.2]
  def change
    create_table :aulas do |t|
      t.integer :numero
      t.integer :piso
      t.integer :capacidad

      t.timestamps
    end
  end
end

class CreateAulas < ActiveRecord::Migration[5.2]
  def change
    create_table :aulas do |t|
      t.integer :Numero
      t.integer :Piso
      t.integer :Capacidad

      t.timestamps
    end
  end
end

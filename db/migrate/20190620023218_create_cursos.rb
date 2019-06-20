class CreateCursos < ActiveRecord::Migration[5.2]
  def change
    create_table :cursos do |t|
      t.string :nombre
      t.string :carrera
      t.integer :cantidadalumnos
      t.string :turno
      t.string :comision
      t.boolean :asignado

      t.timestamps
    end
  end
end

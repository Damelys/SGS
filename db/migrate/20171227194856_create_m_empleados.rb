class CreateMEmpleados < ActiveRecord::Migration[5.1]
  def change
    create_table :m_empleados, :limit => 8  do |t|
      t.string :nombre, null: false, default: "", :limit =>30
      t.string :apellido_paterno, null: false, default: "", :limit =>20
      t.string :apellido_materno, null: false, default: "", :limit =>20
      t.integer :dni, null: false, defauly: 0, :limit =>8
      t.string :direccion, :limit=>40
      t.string :numero_cuenta, :limit=>40
      t.boolean :estado
      t.string :usuario_modificador, null: false, default: "", :limit =>15
      t.string :email, :limit=>50
      t.timestamps
    end
    add_index :m_cliente, index: true, foreign_key: true
    add_index :m_cargo, index: true, foreign_key: true
    add_index :m_departamento, index: true, foreign_key: true
    add_index :m_provincia, index: true, foreign_key: true
    add_index :m_distrito, index: true, foreign_key: true

  end
  #add_index :perfil, index: true, foreign_key: true
  #add_index :empleado, index: true, foreign_key: true
  #add_index :cliente, index: true, foreign_key: true

end

class CreateMPermisos < ActiveRecord::Migration[5.1]
  def change
    create_table :m_permisos do |t|
      t.string :nombre
      t.string :descripcion
      t.timestamps
    end
  end
end

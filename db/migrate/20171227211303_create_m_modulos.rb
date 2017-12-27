class CreateMModulos < ActiveRecord::Migration[5.1]
  def change
    create_table :m_modulos do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end

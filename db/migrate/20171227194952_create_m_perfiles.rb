class CreateMPerfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :m_perfiles do |t|
      t.string :nombre
      t.string :descripcion
      t.timestamps
    end
  end
end

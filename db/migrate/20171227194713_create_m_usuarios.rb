class CreateMUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :m_usuarios, :limit => 4 do |t|
      t.string :nombre, unique: true, null: false, default: "", :limit => 15
      t.string :estado, null: false, default: ""
      t.datetime :fecha_inicio
      t.datetime :fecha_fin
      t.timestamps
    end
  end
end

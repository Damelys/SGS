class CreatePerfilPermisos < ActiveRecord::Migration[5.1]
  def change
    create_table :perfil_permisos do |t|
      t.string :perfil_id
      t.string :permiso_id
      t.string :modulo_id
      t.string :sub_modulo_id
      t.timestamps
    end
  end
end

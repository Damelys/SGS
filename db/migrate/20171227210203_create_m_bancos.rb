class CreateMBancos < ActiveRecord::Migration[5.1]
  def change
    create_table :m_bancos do |t|
      t.string :nobre
      t.string :descripcion
      t.timestamps
    end
  end
end

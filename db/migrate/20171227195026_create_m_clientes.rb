class CreateMClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :m_clientes do |t|

      t.timestamps
    end
  end
end

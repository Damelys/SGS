class CreateMCargos < ActiveRecord::Migration[5.1]
  def change
    create_table :m_cargos do |t|

      t.timestamps
    end
  end
end

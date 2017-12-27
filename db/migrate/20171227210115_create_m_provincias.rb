class CreateMProvincias < ActiveRecord::Migration[5.1]
  def change
    create_table :m_provincias do |t|

      t.timestamps
    end
  end
end

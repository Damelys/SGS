class CreateMDistritos < ActiveRecord::Migration[5.1]
  def change
    create_table :m_distritos do |t|

      t.timestamps
    end
  end
end

class CreateMDepartamentos < ActiveRecord::Migration[5.1]
  def change
    create_table :m_departamentos do |t|

      t.timestamps
    end
  end
end

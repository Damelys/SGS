class MDepartamento < ApplicationRecord
  has_many :m_empleados
  has_many :m_provincias
end

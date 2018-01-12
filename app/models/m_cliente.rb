class MCliente < ApplicationRecord
  has_many :usuarios
  has_many :m_empleados
  has_many :m_polizas
end

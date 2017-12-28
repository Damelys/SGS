class MCliente < ApplicationRecord
  has_many :usuarios
  has_many :m_empleados
end

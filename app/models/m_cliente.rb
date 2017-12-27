class MCliente < ApplicationRecord
  has_many :m_usuarios
  has_many :m_empleados
end

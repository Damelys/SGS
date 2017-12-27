class MEmpleado < ApplicationRecord
  has_one :m_usuario
  belongs_to :m_cliente
  belongs_to :m_cargo
  belongs_to :m_departamento
  belongs_to :m_provincia
  belongs_to :m_distrito
end

class MUsuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, registerable, rememberable, trackable
  devise :database_authenticatable, :lockable,
         :recoverable, :validatable
  belongs_to :m_perfil
  belongs_to :m_empleado
  belongs_to :m_cliente
  #Validaciones
  validates :name, :estado, presence: { message: "Debe indicar un nombre de usuario" }
  validates :name, length: { maximum: 40 }
  validates :name, :email, uniqueness: true
end

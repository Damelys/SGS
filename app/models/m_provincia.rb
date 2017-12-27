class MProvincia < ApplicationRecord
  has_many :m_distritos
  belongs_to :m_departamento
end

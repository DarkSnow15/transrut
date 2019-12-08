# == Schema Information
#
# Table name: clientes
#
#  id         :bigint           not null, primary key
#  documento  :integer
#  nombres    :string
#  apellidos  :string
#  correo     :string
#  celular    :string
#  telefono   :string
#  ciudad     :string
#  direccion  :string
#  empresa    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cliente < ApplicationRecord
  validates :nombres, presence: true
  validates :apellidos, presence: true
  validates :correo, presence: true
  validates :empresa, presence: true
  validates :documento, presence: true
  validates :celular, presence: true
end

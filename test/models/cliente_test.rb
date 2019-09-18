# == Schema Information
#
# Table name: clientes
#
#  id                :bigint           not null, primary key
#  id_cliente        :integer
#  nombres           :string
#  apellidos         :string
#  correo            :string
#  telefono          :string
#  ciudad            :string
#  estado            :string
#  codigo_trans      :string
#  precio            :integer
#  direccion_inicial :string
#  direccion_final   :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class ClienteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

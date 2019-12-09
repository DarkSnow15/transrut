# == Schema Information
#
# Table name: clientes
#
#  id         :bigint           not null, primary key
#  documento  :bigint
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

require 'test_helper'

class ClienteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

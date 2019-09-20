# == Schema Information
#
# Table name: conductores
#
#  id             :bigint           not null, primary key
#  num_documento  :integer
#  nombre         :string
#  cedula_img     :string
#  hoja_vida      :string
#  licencia       :string
#  fech_ven_licen :date
#  fech_seg_ini   :date
#  fech_seg_ven   :date
#  fech_ingreso   :date
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class ConductorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

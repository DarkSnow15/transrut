# == Schema Information
#
# Table name: carros
#
#  id              :bigint           not null, primary key
#  placa           :string
#  nom_prop        :string
#  id_prop         :integer
#  fecha_venc_soat :date
#  fecha_venc_tm   :date
#  fecha_venc_pe   :date
#  fecha_venc_pc   :date
#  img_lic_trans   :string
#  img_tarj_oper   :string
#  img_soat        :string
#  img_tm          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class CarroTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

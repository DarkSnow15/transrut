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

class Carro < ApplicationRecord
  mount_uploader :img_lic_trans, FileUploader
  mount_uploader :img_tarj_oper, FileUploader
  mount_uploader :img_soat, FileUploader
  mount_uploader :img_tm, FileUploader
    validates :placa , presence: true
    validates :nom_prop , presence: true
    validates :id_prop, presence: true
    validates :fecha_venc_soat , presence: true
    validates :fecha_venc_tm , presence: true
end

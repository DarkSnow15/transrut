# == Schema Information
#
# Table name: carros
#
#  id              :bigint           not null, primary key
#  placa           :string
#  documen_prop    :bigint
#  nom_prop        :string
#  cel_propietario :bigint
#  fecha_venc_soat :date
#  fecha_venc_tm   :date
#  fecha_venc_pe   :date
#  fecha_venc_pc   :date
#  serv_publico    :boolean
#  img_lic_trans   :string
#  img_tarj_oper   :string
#  img_soat        :string
#  img_tec_mecan   :string
#  carro_img       :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Carro < ApplicationRecord
  mount_uploader :carro_img, AvatarUploader
  mount_uploader :img_lic_trans, FileUploader
  mount_uploader :img_tarj_oper, FileUploader
  mount_uploader :img_soat, FileUploader
  mount_uploader :img_tec_mecan, FileUploader
    validates :placa , presence: true
    validates :cel_propietario , presence: true
    validates :serv_publico , presence: true
    validates :nom_prop , presence: true
    validates :documen_prop, presence: true
    validates :fecha_venc_soat , presence: true
    validates :fecha_venc_tm , presence: true
  has_many :conductores, through: :conductorcarros
  has_many :conductorcarros
  def carros_list
    "#{id} | #{placa}"
  end
end

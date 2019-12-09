# == Schema Information
#
# Table name: conductores
#
#  id             :bigint           not null, primary key
#  documento      :bigint
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

class Conductor < ApplicationRecord
  mount_uploader :cedula_img, AvatarUploader
  mount_uploader :hoja_vida, FileUploader
  mount_uploader :licencia, FileUploader
  validates :documento, presence: true
  validates :documento, numericality: true
  validates :nombre, presence: true
  validates :fech_ingreso, presence: true
  has_many :carros, through: :conductorcarros
  has_many :conductorcarros
  def conductores_list
    "#{documento} | #{nombre}"
  end
end

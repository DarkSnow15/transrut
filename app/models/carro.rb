class Carro < ApplicationRecord
    validates :placa , presence: true, uniqueness: true
    validates :nom_prop , presence: true
    validates :id_prop, presence: true
    validates :fecha_venc_soat , presence: true
    validates :fecha_venc_tm , presence: true
    validates :fecha_venc_pe , presence: true
    validates :fecha_venc_pc , presence: true
    validates :img_lic_trans , presence: true
    validates :img_tarj_oper, presence: true
    validates :img_soat , presence: true
    validates :img_tm , presence: true 
end
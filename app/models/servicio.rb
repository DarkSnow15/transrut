# == Schema Information
#
# Table name: servicios
#
#  id                :bigint           not null, primary key
#  fecha_hora        :datetime
#  descripcion       :text
#  conductorcarro_id :bigint
#  cliente_id        :bigint
#  valor_serv        :bigint
#  num_cumplido      :bigint
#  num_factura       :bigint
#  observaciones     :text
#  comision          :text
#  direccion_inicio  :string
#  direccion_destino :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Servicio < ApplicationRecord
end

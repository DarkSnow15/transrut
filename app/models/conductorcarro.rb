# == Schema Information
#
# Table name: conductorcarros
#
#  id           :bigint           not null, primary key
#  conductor_id :bigint
#  carro_id     :bigint
#  state        :boolean          default(TRUE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Conductorcarro < ApplicationRecord
  belongs_to :carro
  belongs_to :conductor
end

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

require 'test_helper'

class ConductorcarroTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

class CreateCarros < ActiveRecord::Migration[5.2]
  def change
    create_table :carros do |t|
      t.string :placa
      t.string :nom_prop
      t.integer :id_prop
      t.date :fecha_venc_soat
      t.date :fecha_venc_tm
      t.date :fecha_venc_pe
      t.date :fecha_venc_pc
      t.string :img_lic_trans
      t.string :img_tarj_oper
      t.string :img_soat
      t.string :img_tm

      t.timestamps
    end
  end
end

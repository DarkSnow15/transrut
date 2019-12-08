class CreateCarros < ActiveRecord::Migration[5.2]
  def change
    create_table :carros do |t|
      t.string :placa
      t.integer :documen_prop
      t.string :nom_prop
      t.integer :cel_propietario
      t.date :fecha_venc_soat
      t.date :fecha_venc_tm
      t.date :fecha_venc_pe
      t.date :fecha_venc_pc
      t.boolean :serv_publico
      t.string :img_lic_trans
      t.string :img_tarj_oper
      t.string :img_soat
      t.string :img_tec_mecan
      t.string :carro_img

      t.timestamps
    end
  end
end

class CreateConductores < ActiveRecord::Migration[5.2]
  def change
    create_table :conductores do |t|
      t.bigint :documento
      t.string :nombre
      t.string :cedula_img
      t.string :hoja_vida
      t.string :licencia
      t.date :fech_ven_licen
      t.date :fech_seg_ini
      t.date :fech_seg_ven
      t.date :fech_ingreso

      t.timestamps
    end
  end
end

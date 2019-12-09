class CreateServicios < ActiveRecord::Migration[5.2]
  def change
    create_table :servicios do |t|
      t.date :fecha
      t.text :descripcion
      t.references :conductorcarro, index: true, foreign_key: true
      t.references :cliente, index: true, foreign_key: true
      t.bigint :valor_serv
      t.bigint :num_cumplido
      t.bigint :num_factura
      t.text :observaciones
      t.text :comision
      t.timestamps
    end
  end
end

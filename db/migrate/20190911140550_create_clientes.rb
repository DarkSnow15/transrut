class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.integer :id_cliente
      t.string :nombres
      t.string :apellidos
      t.string :correo
      t.string :telefono
      t.string :ciudad
      t.string :estado
      t.string :codigo_trans
      t.integer :precio
      t.string :direccion_inicial
      t.string :direccion_final

      t.timestamps
    end
  end
end

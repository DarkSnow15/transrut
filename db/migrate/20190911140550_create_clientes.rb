class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.bigint :documento
      t.string :nombres
      t.string :apellidos
      t.string :correo
      t.string :celular
      t.string :telefono
      t.string :ciudad
      t.string :direccion
      t.boolean :empresa

      t.timestamps
    end
  end
end

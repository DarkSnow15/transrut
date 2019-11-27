class CreateConductorcarros < ActiveRecord::Migration[5.2]
  def change
    create_table :conductorcarros do |t|
      t.references :conductor, index: true, foreign_key: true
      t.references :carro, index: true, foreign_key: true
      t.timestamps
    end
  end
end

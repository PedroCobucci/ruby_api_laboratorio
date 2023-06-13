class CreateExames < ActiveRecord::Migration[7.0]
  def change
    create_table :exames do |t|
      t.string :resultado, null: false, default: ""
      t.string :descricao, null: false, default: ""
      t.string :anexo, null: true, default: ""
      t.date :data, null: true, default: ""

      t.timestamps
    end
  end
end

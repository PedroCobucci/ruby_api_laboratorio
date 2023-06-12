class AddFkExames < ActiveRecord::Migration[7.0]
  def change
    add_reference :exames, :paciente, foreign_key: {to_table: :usuarios, on_delete: :cascade}, :null => false
  end
end

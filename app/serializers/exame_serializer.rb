class ExameSerializer < ActiveModel::Serializer
  attributes :id, :resultado, :anexo, :descricao, :data
  belongs_to :paciente, class_name: "Usuario", foreign_key: "paciente_id"
end

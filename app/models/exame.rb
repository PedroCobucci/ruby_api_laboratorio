class Exame < ApplicationRecord
    belongs_to :paciente, class_name: "Usuario", foreign_key: "paciente_id"
end

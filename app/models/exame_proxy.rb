
class ExameProxy
    def initialize(usuario)
      @usuario = usuario
    end

    def set_result_strategy(result_strategy)
        @result_strategy = result_strategy
    end

    def getAllExames
        if @usuario.acesso == 'funcionario'
            return Exame.all
        else
            return Exame.where(paciente_id: @usuario.id)
        end
    end

    def find_exame(exame_id)
        if @usuario.acesso == 'funcionario'
            return Exame.find(exame_id)
        else
            return Exame.find_by(id: exame_id, paciente_id: @usuario.id)
        end
    end

    def getExame(exame_id)
        exame = find_exame(exame_id)
        if @result_strategy.has_result?(exame)
          exame
        else
          nil
        end
    end



end
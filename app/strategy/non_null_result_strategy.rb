class NonNullResultStrategy < ResultStrategy
    def has_result?(exame)
      !exame.resultado.nil?
    end
end

# NonNullResultStrategy herda os métodos e comportamentos da classe ResultStrategy e precisa implementar o método has_result? definido na classe pai.
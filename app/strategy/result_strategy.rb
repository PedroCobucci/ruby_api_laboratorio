class ResultStrategy
    def has_result?(exame)
      raise NotImplementedError, "Subclasses must implement the 'has_result?' method."
    end
end
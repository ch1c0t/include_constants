class Object
  def include_constants(*constants, from:)
    constants = from.constants if constants.empty?
    constants.each do |constant|
      unless from.constants.include? constant
        raise "Cannot include the constant #constant from #from, because #from doesn't have one with such a name."
      end
      const_set constant, (const_get "#{from}::#{constant}")
    end
  end
end

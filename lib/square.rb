class Square < Rectangle

  def self.new_initialize(side, unit)
    super(side, unit, side, unit)
  end
end

class VideoGame
  def initialize(name)
    @name = name
  end

  def ==(other)
    @name == other.name
  end

  attr_reader :name
end

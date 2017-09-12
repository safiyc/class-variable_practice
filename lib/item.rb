class Item
  # class variable; not instance variable
  @@list = []

  # can read/write instance variable 'name'
  attr_accessor :name

  def initialize(name)
    # instance variable
    @name = name
  end

  # '.all' is a class method; not instnace method
  def self.all()
    @@list
  end

  # class method; pushes input to '@@list'
  def save()
    @@list.push(self)
  end

  # class method to clear list of '@@list'
  def self.clear()
    @@list = []
  end
end

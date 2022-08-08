class Human
  @name

  def initialize(human_name)
    @name = human_name
  end


  def say(msg)
    "I'm #{@name}. #{msg}"
  end
end

human = Human.new("TARO")
print human.say("Hello")


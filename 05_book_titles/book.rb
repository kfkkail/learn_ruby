class Book
  attr_reader :title

  def title=(text)
    splittedtext = text.split
    capitalized_text = []
    littleword = %w(over the and in of a an)
    count = 0
    splittedtext.each{|input|
      count += 1
      if ((littleword.include? input) && count != 1)
        capitalized_text.push(input)
      else
        capitalized_text.push(input.capitalize)
      end}
    @title = capitalized_text.join(" ")
  end
end

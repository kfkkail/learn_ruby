def echo(text)
  text
end

def shout(text)
  text.upcase
end

def repeat(text, number_of_times = 2)
  ((text + ' ') * number_of_times).chomp(' ')
end

def start_of_word(text, number_of_letters)
  text[0..number_of_letters-1]
end

def first_word(text)
  text.split[0]
end

def titleize(text)
  splittedtext = text.split
  capitalized_text = []
  littleword = %w(over the and)
  count = 0
  splittedtext.each{|input|
    count += 1
    if ((littleword.include? input) && count != 1)
      capitalized_text.push(input)
    else
      capitalized_text.push(input.capitalize)
    end}
  capitalized_text.join(" ")
end

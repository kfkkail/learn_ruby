def translate(str)
  vowels = %w(a e i o u)
  splitstr = str.split
  words = []
  splitstr.each {|input|
    input = input.gsub("qu", "1")
    if vowels.include? input[0]
      # begins with vowel, just add "ay"
      words.push(input+"ay")
    elsif vowels.include? input[1]
      words.push(input[1..input.length]+input[0]+"ay")
    elsif vowels.include? input[2]
      words.push(input[2..input.length]+input[0..1]+"ay")
    else
      words.push(input[3..input.length]+input[0..2]+"ay")
    end
  }
  words.join(' ').chomp(' ').gsub("1", "qu")
end

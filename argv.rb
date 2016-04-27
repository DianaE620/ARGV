
puts "Los argumentos recibidos son:"
p ARGV
puts " "
puts "Inicia el programa"

def pig_latin 
  expresion = []
  new_pig = []
  

  ARGV.each do |word|
    i = 0

    if word =~ /\A[aeiou]/
      new_pig << word + "way"
    else
      loop do 
        if word[i] =~ /[^aeiou]/
          expresion << word[i]
        end

        i += 1
        break if word[i] =~ /[aeiou]/
      end

      new_pig << word.gsub(/#{expresion.to_s}/, " ").strip + expresion.join + "ay" 
    end
  end

  new_pig.each {|word| print word + " "}
puts 

end


pig_latin


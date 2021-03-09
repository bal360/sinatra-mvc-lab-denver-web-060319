class PigLatinizer 

    def piglatinize(string)
        string = string.split(" ").map do |word|
            first_letter = word.match(/^([^aeiouAEIOU]+)/)
            binding.pry
            if first_letter
                "#{word.gsub(/^([^aeiouAEIOU])+/, "")}#{first_letter}ay"
            else 
                "#{word}way"
            end
        end
        string.join(" ")
    end
end
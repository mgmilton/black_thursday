require_relative 'morsecode.rb'

 class Translator < MorseCode
   attr_reader  :string,
                :morsecode

   def initialize(string)
      @string = string
      @m = MorseCode.new
    end

    def eng_to_morse
      lowercase = string.downcase
      lowercasearray = lowercase.chars
      lowercasearray.map do |x|
        @m.morsecode[x]
      end.join
    end

    def morse_to_eng
      let = string.gsub("  ", " ~ ")
      split = let.split(" ")
      d = split.map do |x|
        @m.morsecode.key(x)
      end.join
    end
end

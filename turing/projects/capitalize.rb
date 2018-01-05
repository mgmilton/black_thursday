def capitalizer(english)
  english_no_capshift = english.each_with_index do |value, index|
    if value == "CapShift"
      capital = english[index+1].upcase
      english[index+1] = capital
      english.delete_at(index)
    end
  end
  english_no_capshift
end

p capitalizer(["a","CapShift", "c", "d"])

def capshift_caller
  english = braille_to_english
  english_no_capshift = capitalizer(english)
  eng_array_to_string(english_no_capshift)
end

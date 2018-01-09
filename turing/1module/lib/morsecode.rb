class MorseCode
  attr_reader :morsecode

  def initialize
    @morsecode = Hash.new
    @morsecode["a"] = ".-"
    @morsecode["b"] = "-..."
    @morsecode["c"] = "-.-."
    @morsecode["d"] = "-.."
    @morsecode["e"] = "."
    @morsecode["f"] = "..-."
    @morsecode["g"] = "--."
    @morsecode["h"] = "...."
    @morsecode["i"] = ".."
    @morsecode["j"] = ".---"
    @morsecode["k"] = "-.-"
    @morsecode["l"] = ".-.."
    @morsecode["m"] = "--"
    @morsecode["n"] = "-."
    @morsecode["o"] = "---"
    @morsecode["p"] = ".--."
    @morsecode["q"] = "--.-"
    @morsecode["r"] = ".-."
    @morsecode["s"] = "..."
    @morsecode["t"] = "-"
    @morsecode["u"] = "..-"
    @morsecode["v"] = "...-"
    @morsecode["w"] = ".--"
    @morsecode["x"] = "-..-"
    @morsecode["y"] = "-.--"
    @morsecode["z"] = "--.."
    @morsecode[" "] = " "
    @morsecode["1"] = ".----"
    @morsecode["2"] = "..---"
    @morsecode["3"] = "...--"
    @morsecode["4"] = "....-"
    @morsecode["5"] = "....."
    @morsecode["6"] = "-...."
    @morsecode["7"] = "--..."
    @morsecode["8"] = "---."
    @morsecode["9"] = "----."
    @morsecode["0"] = "-----"
    @morsecode["~"] = " "
  end


end

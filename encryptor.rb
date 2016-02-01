def caesar_cipher(string, key)
  key %= 26
  chars = string.split("").map do |char|
    if char =~ /[^A-Za-z]/
      char
    else
      low_char = (char =~ /[a-z]/? "a" : "A")
      ((char.ord + key - low_char.ord) % 26 + low_char.ord).chr
    end
  end
  chars.join
end
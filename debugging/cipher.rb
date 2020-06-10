def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  p cipher
  p ciphertext.chars.map
  p "ciphe length is #{cipher.length}"
  plaintext_chars = ciphertext.chars.map do |char|
    p 65 - char.ord
    cipher[char.ord - 65]
  end
  plaintext_chars.join
end


# Intended output:
#
puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"

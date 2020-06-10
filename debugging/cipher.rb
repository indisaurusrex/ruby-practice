def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    p cipher.find_index(char)
    p cipher
    p char
    (65 + cipher.find_index(char)).chr
  end
  p ciphertext_chars
  p ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  p plaintext_chars.join
end


# Intended output:
#
encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"

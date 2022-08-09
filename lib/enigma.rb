require './lib/calculables'

class Enigma
  include Calculables

  def encrypt(message, key = key_generator, date = date_generator)
    @message = message.downcase
    @key = key
    @date = date

    message_array = @message.chars
    encrypted_message = message_array.each_with_index.map do |char, index|
      if index % 4 == 0
        char = a_key_rotation[char]
      elsif index % 4 == 1
        char = b_key_rotation[char]
      elsif index % 4 == 2
        char = c_key_rotation[char]
      elsif index % 4 == 3
        char = d_key_rotation[char]
      end
   end
   encrypted = {encryption: encrypted_message.join, key: @key, date: @date}
 end

 def decrypt(message, key = key_generator, date = date_generator)
   @message = message.downcase
   @key = key
   @date = date

   message_array = @message.chars
   decrypted_message = message_array.each_with_index.map do |char, index|
     if index % 4 == 0
       char = a_key_rotation.invert[char]
     elsif index % 4 == 1
       char = b_key_rotation.invert[char]
     elsif index % 4 == 2
       char = c_key_rotation.invert[char]
     elsif index % 4 == 3
       char = d_key_rotation.invert[char]
     end
  end
  decrypted = {decryption: decrypted_message.join, key: @key, date: @date}
 end

  def alphabet_set
    ("a".."z").to_a << " "
  end

  def key_generator
    rand(10 ** 4).to_s.rjust(5,'0')
  end

  def date_generator
    Time.now.strftime("%d%m%y")
  end
end

class Enigma

  def encrypt(message, key, date)
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

    # message_index_arr = message_array.each_with_index.to_a
    # alphabet_set_index_arr = alphabet_set.each_with_index.to_a

  def alphabet_set
    ("a".."z").to_a << " "
  end

  def keys
    {A: @key[0..1].to_i, B: @key[1..2].to_i, C: @key[2..3].to_i, D: @key[3..4].to_i}
  end

  def offsets
    offset = (@date.to_i ** 2).to_s[-4..-1]
    {A: offset[0].to_i, B: offset[1].to_i, C: offset[2].to_i, D: offset[3].to_i}
  end

  def key_shifts
    keys.merge!(offsets) { |key, key_value, offset_value| key_value + offset_value }
  end
  #the hash key_shifts holds the key shift amounts now

  def key_generator
    rand(10 ** 4).to_s.rjust(5,'0')
  end

  def a_key_rotation
    Hash[alphabet_set.zip(alphabet_set.rotate(key_shifts[:A]))]
  end

  def b_key_rotation
    Hash[alphabet_set.zip(alphabet_set.rotate(key_shifts[:B]))]
  end

  def c_key_rotation
    Hash[alphabet_set.zip(alphabet_set.rotate(key_shifts[:C]))]
  end

  def d_key_rotation
    Hash[alphabet_set.zip(alphabet_set.rotate(key_shifts[:D]))]
  end

  # def decrypt(message, key, date)
  #   output = {
  #     encryption: message,
  #     key: key,
  #     date: date
  #   }
  # end
end

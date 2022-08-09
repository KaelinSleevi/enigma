class Enigma

  def encrypt(message, key, date)
    @message = message.downcase
    @key = key
    @date = date

    message_array = @message.chars
    # output = {
    #   encryption: message,
    #   key: key,
    #   date: date
    # }
  end

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
  #the hash keys holds the key shifts now

  def key_generator
    rand(10 ** 4).to_s.rjust(5,'0')
  end

  # def decrypt(message, key, date)
  #   output = {
  #     encryption: message,
  #     key: key,
  #     date: date
  #   }
  # end
end
#
#take the key and the date to find the offset_shift_calculator
#iterate through the message and shift through each character
#so it rotates through offsets

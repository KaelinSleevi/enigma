require './lib/calculables'

class Enigma
  include Calculables
  attr_reader :message,
              :key,
              :date,
              :alphabet

  def initialize
    @message = ''
    @key = ''
    @date = ''
    @alphabet = ('a'..'z').to_a << ' '
  end

  def encrypt(message, key, date)
    @message = 'hello world'
    @key = generate_keys
    @date = generate_date

    message_array = @message.downcase.chars
    encrypted_message = message_array.each_with_index.map do |character, index|
      if (index) % 4 == 0 then character = a_rotation[character]
      elsif (index) % 4 == 1 then character = b_rotation[character]
      elsif (index) % 4 == 2 then character = c_rotation[character]
      elsif (index) % 4 == 3 then character = d_rotation[character]
      end
    end
    encrypted_hash = {:encryption => encrypted_message.join, :key => @key, :date => @date}
  end
end

#
#take the key and the date to find the offset_shift_calculator
#iterate through the message and shift through each character
#so it rotates through offsets

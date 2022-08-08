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
    encrpyted = message_array.each do |character|


  end
end

#
#take the key and the date to find the offset_shift_calculator
#iterate through the message and shift through each character
#so it rotates through offsets

require './lib/calculables'

class Enigma
  include Calculables

  def encrypt(message, key = generate_keys, date = generate_date)
    
  end
end
# output_hash = {
#   encryption: File.read('./data/encrypted.txt'),
#   key: generate_keys,
#   date: generate_date
# }

#take the key and the date to find the offset_shift_calculator
#iterate through the message and shift through each character
#so it rotates through offsets

require './lib/calculables'

class Enigma
  include Calculables

  def encrypt(message, key, date)
    output_hash = {
      encryption: File.read('./data/encrypted.txt'),
      key: generate_keys,
      date: generate_date
    }
  end
end

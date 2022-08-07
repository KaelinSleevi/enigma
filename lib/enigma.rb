require './lib/calculables'

class Enigma
  include Calculables
  
  def encrypt(message, key, date)
    output_hash = {
      encryption: message,
      key: key,
      date: date
    }
  end
end

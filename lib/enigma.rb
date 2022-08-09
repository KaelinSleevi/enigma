class Enigma

  def encrypt(message, key, date)
    output = {
      encryption: message,
      key: key,
      date: date
    }
  end
end
#
#take the key and the date to find the offset_shift_calculator
#iterate through the message and shift through each character
#so it rotates through offsets

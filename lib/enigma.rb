class Enigma

  def encrypt(message, keys = key, dates = date)

  end

  def date
    Time.now.strftime("%d%m%y")
  end

  def key
    rand(100000).to_s.rjust(5, "0")
  end

end

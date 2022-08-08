module Calculables

  def generate_keys
    Random.rand(10000).to_s.rjust(5, '0')
  end

  def generate_date
    @date = (Time.now).strftime("%d%m%y")
  end

  def key_calculator
    {
    A: @key[0..1].to_i,
    B: @key[1..2].to_i,
    C: @key[2..3].to_i,
    D: @key[3..4].to_i
  }
  end

  def offset_calculator
    last_four = (@date.to_i**2).to_s[-4..-1]
    {
    A: last_four[0].to_i,
    B: last_four[1].to_i,
    C: last_four[2].to_i,
    D: last_four[3].to_i
  }
  end

  def shifts
    key_calculator.merge!(offset_calculator){ |key, key_value, offset_value| key_value + offset_value }
  end

  def a_rotation
    Hash[@alphabet.zip(@alphabet.rotate(offset_calculator[:A]))]
  end

  def b_rotation
    Hash[@alphabet.zip(@alphabet.rotate(offset_calculator[:B]))]
  end

  def c_rotation
    Hash[@alphabet.zip(@alphabet.rotate(offset_calculator[:C]))]
  end

  def d_rotation
    Hash[@alphabet.zip(@alphabet.rotate(offset_calculator[:C]))]
  end
end

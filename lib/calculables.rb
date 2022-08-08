module Calculables

  def generate_keys
    Random.rand(10000).to_s.rjust(5, '0')
  end

  def generate_date
    @date = (Time.now).strftime("%d%m%y")
  end

  def key_calculator
    @a = @key[0..1].to_i,
    @b = @key[1..2].to_i,
    @c = @key[2..3].to_i,
    @d = @key[3..4].to_i
  end

  def offset_shift_calculator
    last_four = (@date.to_i**2).to_s[-4..-1]
    shifts = {
    a_shift: (last_four[0].to_i + @a),
    b_shift: (last_four[1].to_i + @b),
    c_shift: (last_four[2].to_i + @c),
    d_shift: (last_four[3].to_i + @d)
  }
  end
end

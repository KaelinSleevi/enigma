module Calculables

  def generate_keys
    Random.rand(10000).to_s.rjust(5, '0')
  end

  def generate_date
    @date = (Time.now).strftime("%d%m%y")
  end

  def key_calculator
    @a_key = @key[0..1].to_i,
    @b_key = @key[1..2].to_i,
    @c_key = @key[2..3].to_i,
    @d_key = @key[3..4].to_i
  end

  def offset_calculator
    last_four = (@date.to_i**2).to_s[-4..-1]
    @a_offset = last_four[0].to_i,
    @a_offset = last_four[1].to_i,
    @a_offset = last_four[2].to_i,
    @a_offset = last_four[3].to_i
  end

  def shifts
    @a_shift = @a_key + @a_offset
    @b_shift = @b_key + @b_offset
    @c_shift = @c_key + @c_offset
    @d_shift = @d_key + @d_offset
  end
end

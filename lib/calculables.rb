module Calculables

  def alphabet
    ("a".."z").to_a << " "
  end

  def key_calculator
    @a = @key[0..1].to_i,
    @b = @key[1..2].to_i,
    @c = @key[2..3].to_i,
    @d = @key[3..4].to_i
  end

  def offset_calculator
    last_four = (@date.to_i**2).to_s[-4..-1]
    @a_offset = last_four[0].to_i,
    @b_offset = last_four[1].to_i,
    @c_offset = last_four[2].to_i,
    @d_offset = last_four[3].to_i
  end

  def shift_calculator
    @a_shift = @a + @a_offset
    @b_shift = @b + @b_offset
    @c_shift = @c + @c_offset
    @d_shift = @d + @d_offset
  end
end

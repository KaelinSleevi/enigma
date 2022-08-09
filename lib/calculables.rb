module Calculables

  def keys
    {A: @key[0..1].to_i, B: @key[1..2].to_i, C: @key[2..3].to_i, D: @key[3..4].to_i}
  end

  def offsets
    offset = (@date.to_i ** 2).to_s[-4..-1]
    {A: offset[0].to_i, B: offset[1].to_i, C: offset[2].to_i, D: offset[3].to_i}
  end

  def key_shifts
    keys.merge!(offsets) { |key, key_value, offset_value| key_value + offset_value }
  end

  def a_key_rotation
    Hash[alphabet_set.zip(alphabet_set.rotate(key_shifts[:A]))]
  end

  def b_key_rotation
    Hash[alphabet_set.zip(alphabet_set.rotate(key_shifts[:B]))]
  end

  def c_key_rotation
    Hash[alphabet_set.zip(alphabet_set.rotate(key_shifts[:C]))]
  end

  def d_key_rotation
    Hash[alphabet_set.zip(alphabet_set.rotate(key_shifts[:D]))]
  end

  def reverse_a_rotation
    a_key_rotation.invert
  end

  def reverse_b_rotation
    b_key_rotation.invert
  end

  def reverse_c_rotation
    c_key_rotation.invert
  end

  def reverse_d_rotation
    d_key_rotation.invert
  end
end

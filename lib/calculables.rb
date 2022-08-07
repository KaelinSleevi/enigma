module Calculables

  def key_generator
    ('%05d' % rand(10 ** 4))
  end

  def date_generator
    @date = (Time.now).strftime("%d%m%y")
  end

  def key_calculator
    @key_a = @key(0..1).to_i
    @key_b = @key(1..2).to_i
    @key_c = @key(2..3).to_i
    @key_d = @key(3..4).to_i
  end

  def offset_calculator
    last_four = (@date.to_i**2).to_s[-4..-1]
    @offset_a = last_four[0].to_i
    @offset_b = last_four[1].to_i
    @offset_c = last_four[2].to_i
    @offset_d = last_four[3].to_i
  end
end

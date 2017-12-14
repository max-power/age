class Age
  def self.now(dob)
    new(dob).now
  end
  
  def initialize(dob)
    @dob = dob
  end
  
  def now
    at Time.now
  end
  
  def at(date)
    (f(date) - f(@dob)) / 10000
  end
  
  private
  
  def f(date)
    date.strftime('%Y%m%d').to_i
  end
end

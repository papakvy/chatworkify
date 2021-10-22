class String
  def truncate(max)
    length > max ? "#{self[0...max]}..." : self
  end
end

class Symbol
  def upcase!
    self.to_s.upcase
  end
end

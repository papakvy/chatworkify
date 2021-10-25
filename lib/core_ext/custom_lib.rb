# frozen_string_literal: true

# Custom methods for String class
class String
  def truncate(max)
    length > max ? "#{self[0...max]}..." : self
  end
end

# Custom methods for Symbol class
class Symbol
  def upcase!
    to_s.upcase
  end
end

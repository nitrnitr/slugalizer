require_relative '../slugalizer.rb'

class String
  def to_slug
    Slugalizer.to_slug self
  end
end

class NilClass
  def to_slug
    ''
  end
end

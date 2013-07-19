class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019,'dollar'=>1}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end
  def in(value)
	self/@@currencies[value.to_s.chomp('s')]
	end
end

class String
  def palindrome?
	str1=self.downcase.gsub(/[^a-z]/i,'')
	str1==str1.reverse
	end
end

module Enumerable
  def palindrome?
	pair = self.inject([]) { |acc, el| acc<<el }
    pair==pair.reverse
  end
end
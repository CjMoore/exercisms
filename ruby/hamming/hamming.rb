class Hamming

	def self.compute(a, b)
		a=a.chars
		b=b.chars
		raise ArgumentError if a.length != b.length
		a.zip(b).map { |original, compare| original == compare}.select { |a| !a }.size
	end
end

module BookKeeping
	VERSION=3
end

module Pangram

	def self.pangram?(sentence)ten
		("a".."z").all? do |letter|
			sentence.downcase.include?(letter)
		end
	end

end

module BookKeeping
	VERSION=6
end

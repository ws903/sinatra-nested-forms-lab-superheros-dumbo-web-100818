class Hero
	attr_accessor(:name, :power, :biography)
	@@all = []

	def initialize(name:, power:, biography:)
		@name, @power, @biography = name, power, biography
		@@all.push(self)
	end

	def self.all
		@@all
	end
end
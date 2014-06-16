class Changer

	CHANGE = [25,10,5,1]

	def self.make_change(num)
		change = []

		quarters = (num / 25)
		num -= 25 * quarters
		dimes = (num / 10)
		num -= 10 * dimes
		nickels = (num / 5)
		num -= 5 * nickels
		pennies = num  

		change << [25] * quarters unless quarters == 0
		change << [10] * dimes unless dimes == 0
		change << [5] * nickels unless nickels == 0
		change << [1] * pennies unless pennies == 0

		change.flatten!
	end
end
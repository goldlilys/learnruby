class Student

	attr_reader :first_name, :last_name, :grade

	# constructor
	def initialize (first_name, last_name, grade)
		@first_name = first_name
		@last_name = last_name
		@grade = grade
	end

	#modifier for senior condition
	def senior?
		grade == 12
	end

	#modifier for junior condition
	def junior?
		grade == 11
	end

	# String format for printing use to_s
	def to_s 
		" * #{last_name}, #{first_name}"
	end
end

#senior students method
def seniors(students)

	#senior_students = []
	#students.each do |student|

	#condition if senior without modifier
		# if student.grade == 12
			#senior_students.push(student) 
		# end
	#end
	#return senior_students

	#select method for array and checks if senior? is true or exists
	#looks like details.select{ |item| item.modifier? } where details is an array
	students.select { |student| student.senior? }
end

#junior students method
def juniors(students)
	students.select { |student| student.junior? }
end

#student values instances
fred = Student.new("Fred", "Walter", 12)
sara = Student.new("Sara", "Summer", 12)
roy = Student.new("Roy", "Go", 11)

all_students = [fred, sara, roy]

puts "\nSeniors"
seniors(all_students).each do |student|
	puts student
end

puts "\nJuniors"
juniors(all_students).each do |student|
	puts student
end
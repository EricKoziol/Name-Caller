# Replace names with the students' names to pick someone at random

names = ["Alice", "Bob", "Candice", "Dimitri", "Eleanor"]

while names.any?
	random = rand(0...names.length)

	print "Next is: #{names[random]}. {Press Enter to continue.}"
	command = %x(echo #{names[random]} && say -v Samantha #{names[random]})
	

	names.delete_at(random)
	gets
end
exec "echo All done! && say -v Samantha 'All Done'"
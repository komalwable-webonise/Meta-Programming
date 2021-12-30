# 1. class_eval
class Arithmetic
end
Arithmetic.class_eval do
	def subtraction(num1,num2)
		result= num1-num2
		puts result
	end

	def self.say_instance()
		puts "this is instance method..!!!"
	end
end
Arithmetic.new.subtraction(40,10)
Arithmetic.say_instance()

# 2.instance_eval
class Login_page
end
Login_page.instance_eval do
	def email()
		puts "email : komal@gmail.com"
	end
end
Login_page.email
lp = Login_page.new
lp.instance_eval do
	def password
		puts "pass  : Encrypted"
	end
end
lp.password()

# 3. instance_variable_(get/set)
class Person
	 def initialize(username, password)
	 	@user = username
		@pass = password
	end
	def set_user
		@user
	end
	def set_pass
		@pass
	end
end
p = Person.new("komal", "Kw123@45")
# puts p.inspect # print the class instanse object.
puts "Username :  #{p.instance_variable_get(:@user)}"
puts "Password :  #{p.instance_variable_get(:@pass)}"

# 1. Block
puts [1,2,3,4,5,6,7,8,9,10].select { |i| i.even? }

# 2. Proc
odd_num = Proc.new { |num| puts [1,2,3,4,5,6,7,8,9,10].select { |i| i.odd? }}
odd_num.call

# 3. Lambda
my_lam = lambda do puts [1,2,3,4,5,6,7,8,9,10].select { |i| i.even? }
end
my_lam.call

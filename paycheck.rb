$non_OT_Hours = 40.0
$oT_Rate = 1.5

class Yearly
	
	attr_reader  :aName, :aYear, :aEmployee  
	
	def initialize( aName, aYear, aEmployee )
		@name     = aName
		@year     = aYear
		@employee = aEmployee
	end
	
	def get_employeeID
		return @employee
	end
	
	def get_currentYear
		return @year
	end
		

end

class PayStub < Yearly

	def initialize( aName,aYear, aEmployee, aMonth )
		super( aName, aYear, aEmployee )
		@month = aMonth
	end
	
	def get_month
		return @month
	end
end

module RegPay

	hourly_rate  = 10.00
	
end

class Paycheck < PayStub
	
include RegPay
	
	def initialize( aName,aYear, aEmployee, aMonth, aHours	)
		super( aName, aYear, aEmployee, aMonth )
		@hours = aHours
	end

	def get_OtHours	 
		return ( @hours - $non_OT_Hours )
	end
		
	def get_regPayhours
		return ( $non_OT_Hours - @hours )
	end
end

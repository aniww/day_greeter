require "day_greeter/version"

module DayGreeter
  	def self.say
		"Hello geeks!"
	end
	def self.greet
		get_msg
    end
    def self.get_msg
    	hrs=Time.now.hour
		msg=say
 		if (hrs >  0)
 			msg = "Mornin' Sunshine!" 	 #REALLY early
		end
		if (hrs >=  6) 
 			msg = "Good morning"      # After 6am
		end
		if (hrs >= 12)
			msg = "Good afternoon";    #After 12pm
		end
		if (hrs >= 17)
			msg = "Good evening";      #After 5pm
		end
		if (hrs >= 22)
			msg = "Go to bed!";  
		end	      # After 10pm
		msg
    end
end
ActionView::Base.send :include, DayGreeter 

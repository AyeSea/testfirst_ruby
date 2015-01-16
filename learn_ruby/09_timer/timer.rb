class Timer
	attr_accessor :seconds

	def initialize
		@seconds ? @seconds = secs_passed_in : @seconds = 0
	end


	def padded(time_unit)
		time_unit < 10 ? "0#{time_unit}" : "#{time_unit}"
	end


	def time_string
		@secs = @seconds
		@mins = @secs / 60
		@hrs = @mins / 60

		@mins = @mins - (@hrs * 60)
		@secs = @secs - (@hrs * 60 * 60) - (@mins * 60)

		"#{padded(@hrs)}:#{padded(@mins)}:#{padded(@secs)}"
	end
end
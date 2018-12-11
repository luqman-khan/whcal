require "whcal/version"
require 'date'

module Whcal

	def diff_year(from_date, to_date)
		return diff_month(from_date, to_date)/12.0 
	end

	def diff_month(from_date, to_date)
		return ((((to_date.methods.include?(:year) ? to_date.year  : 0.0) - (to_date.methods.include?(:year) ? from_date.year : 0.0 )).abs.to_f*12.0 - 
			((to_date.methods.include?(:month) ? to_date.month  : 0.0) - (to_date.methods.include?(:month) ? from_date.month : 0.0 )).abs.to_f) +
		((to_date.methods.include?(:day) ? to_date.day  : 0.0) - (to_date.methods.include?(:day) ? from_date.day : 0.0 )).abs.to_f/30.0 + 
		((to_date.methods.include?(:hour) ? to_date.hour  : 0.0) - (to_date.methods.include?(:hour) ? from_date.hour : 0.0 )).abs.to_f/(24*30.0) + 
		((to_date.methods.include?(:minute) ? to_date.minute : 0.0) - (to_date.methods.include?(:minute) ? from_date.minute : 0.0 )).abs.to_f/(60*24*30.0) + 
		((to_date.methods.include?(:second) ? to_date.second : 0.0) - (to_date.methods.include?(:second) ? from_date.second : 0.0 )).abs.to_f/(60*60*24*30.0))
	end

	def diff_day(from_date, to_date)
		diff_hour(from_date,to_date) / 24.0 
	end

	def diff_hour(from_date,to_date)
		diff_minute(from_date,to_date) / 60.0 
	end

	def diff_minute(from_date,to_date)
		diff_second(from_date,to_date) / 60.0
	end

	def diff_second(from_date,to_date)
		return (( to_date.methods.include?(:day) && from_date.methods.include?(:day) ? (to_date.to_date-from_date.to_date).to_i.abs.to_f*24*60*60 : 0.0) + 
		((to_date.methods.include?(:hour) ? to_date.hour  : 0.0) - (to_date.methods.include?(:hour) ? from_date.hour : 0.0 )).abs.to_f*60*60 +
		 ((to_date.methods.include?(:minute) ? to_date.minute : 0.0) - (to_date.methods.include?(:minute) ? from_date.minute : 0.0 )).abs.to_f*60 + 
		 ((to_date.methods.include?(:second) ? to_date.second : 0.0) - (to_date.methods.include?(:second) ? from_date.second : 0.0 )).abs.to_f ) 
		
	end

end

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]


end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to either the
  # Christmas or the New Year's arrays

  holiday_hash[:winter][:new_years].push(supply)
  holiday_hash[:winter][:christmas].push(supply)

end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
   holiday_hash[season.to_sym][holiday_name.to_sym] = supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
    holiday_hash[:winter].collect do |key, value|
      value 
    end.flatten
    

end


holiday_hash =
   {
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }

  
def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

      # holiday_hash.each do | season, value|
      #       puts "#{season.to_s.capitalize}:"
      #       #prints the season
      #           value.each do |holiday, supplies|
      #             #we want to remove the _ and replace with a space
                  
      #             puts "  #{holiday.capitalize.to_s.gsub("_"," ")}: #{supplies}"    
      #           end#Prints the holiday
                  
                
      # end

      holiday_hash.each do | season, holidays|
          puts "#{season.to_s.capitalize}:"      
              holidays.each do |holiday,supplies|
                normalized_holiday_name = holiday.to_s.split("_").collect{|w|w.capitalize}.join(" ")
                puts "  #{normalized_holiday_name}: #{supplies.join(", ")}"
              end
      end    

end #end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  #SELECT all holiday names whose supplies INCLUDE BBQ
      results = []
      holiday_hash.each do |season,holidays|
          holidays.each do |holiday_name, supplies|
            if supplies.include?("BBQ")
              results << holiday_name
            end
          end

      end

results
end
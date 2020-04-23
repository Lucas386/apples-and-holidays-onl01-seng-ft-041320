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
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second parameter, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  # using .each or .collect or .map
  holiday_hash[:winter].collect do |holidays, items|
    items << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  # you do not need to iterate this time
  holiday_supplies[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  holiday_supplies[season] = {holiday_name => supply_array}
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].collect do |holidays, supplies|
    supplies
  end.flatten
end

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.collect do |seasons, holidays|
    puts "#{seasons.capitalize}:"
    holidays.map do |holiday, supply|
      puts "  #{holiday.to_s.split("_").each{|letters| letters.capitalize!}.join(' ')}: #{supply.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
    holiday_hash.each do |seasons, holidays|
      holidays.each do |holidays, supply|
        if supply.include? "BBQ"
          bbq_holidays << holiday
        end
      end
    end
    flatten.compact
  end

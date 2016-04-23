# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/us.yaml, definitions/north_america_informal.yaml
  #
  # To use the definitions in this file, load it right after you load the
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'generated_definitions/us'
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module US # :nodoc:
    def self.defined_regions
      [:us, :us_dc, :us_ca, :ca]
    end

    def self.holidays_by_month
      {
              0 => [{:function => "easter(year)", :function_arguments => [:year], :function_modifier => -2, :type => :informal, :name => "Good Friday", :regions => [:us]},
            {:function => "easter(year)", :function_arguments => [:year], :type => :informal, :name => "Easter Sunday", :regions => [:us]}],
      1 => [{:mday => 1, :observed => "to_weekday_if_weekend(date)", :observed_arguments => [:date], :name => "New Year's Day", :regions => [:us]},
            {:wday => 1, :week => 3, :name => "Martin Luther King, Jr. Day", :regions => [:us]},
            {:function => "us_inauguration_day(year)", :function_arguments => [:year], :name => "Inauguration Day", :regions => [:us_dc]}],
      2 => [{:wday => 1, :week => 3, :name => "Presidents' Day", :regions => [:us]},
            {:mday => 2, :type => :informal, :name => "Groundhog Day", :regions => [:us, :ca]},
            {:mday => 14, :type => :informal, :name => "Valentine's Day", :regions => [:us, :ca]}],
      3 => [{:mday => 31, :name => "Cesar Chavez Day", :regions => [:us_ca]},
            {:mday => 17, :type => :informal, :name => "St. Patrick's Day", :regions => [:us, :ca]}],
      5 => [{:wday => 1, :week => -1, :name => "Memorial Day", :regions => [:us]},
            {:wday => 0, :week => 2, :type => :informal, :name => "Mother's Day", :regions => [:us, :ca]},
            {:wday => 6, :week => 3, :type => :informal, :name => "Armed Forces Day", :regions => [:us]}],
      7 => [{:mday => 4, :observed => "to_weekday_if_weekend(date)", :observed_arguments => [:date], :name => "Independence Day", :regions => [:us]}],
      9 => [{:wday => 1, :week => 1, :name => "Labor Day", :regions => [:us]}],
      10 => [{:wday => 1, :week => 2, :name => "Columbus Day", :regions => [:us]},
            {:mday => 31, :type => :informal, :name => "Halloween", :regions => [:us, :ca]}],
      11 => [{:mday => 11, :observed => "to_weekday_if_weekend(date)", :observed_arguments => [:date], :name => "Veterans Day", :regions => [:us]},
            {:wday => 4, :week => 4, :name => "Thanksgiving", :regions => [:us]},
            {:function => "day_after_thanksgiving(year)", :function_arguments => [:year], :name => "Day after Thanksgiving", :regions => [:us_ca]}],
      12 => [{:mday => 25, :observed => "to_weekday_if_weekend(date)", :observed_arguments => [:date], :name => "Christmas Day", :regions => [:us]}],
      4 => [{:mday => 1, :type => :informal, :name => "April Fool's Day", :regions => [:us, :ca]},
            {:mday => 22, :type => :informal, :name => "Earth Day", :regions => [:us, :ca]}],
      6 => [{:wday => 0, :week => 3, :type => :informal, :name => "Father's Day", :regions => [:us, :ca]}]
      }
    end

    def self.custom_methods
      {
        "us_inauguration_day(year)" => Proc.new { |year|
year % 4 == 1 ? 20 : nil
},

"day_after_thanksgiving(year)" => Proc.new { |year|
Holidays::DateCalculatorFactory.day_of_month_calculator.call(year, 11, 4, 4) + 1
},


      }
    end
  end
end
# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/ar.yaml
  #
  # To use the definitions in this file, load it right after you load the
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'generated_definitions/ar'
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module AR # :nodoc:
    def self.defined_regions
      [:ar]
    end

    def self.holidays_by_month
      {
              0 => [{:function => "easter(year)", :function_arguments => [:year], :function_modifier => -2, :name => "Viernes Santo", :regions => [:ar]}],
      1 => [{:mday => 1, :name => "Año Nuevo", :regions => [:ar]}],
      2 => [{:mday => 8, :name => "Carnaval", :regions => [:ar]},
            {:mday => 9, :name => "Carnaval", :regions => [:ar]}],
      3 => [{:mday => 24, :name => "Día Nacional de la Memoria por la Verdad y la Justicia", :regions => [:ar]}],
      4 => [{:mday => 2, :name => "Día del Veterano y de los Caídos en la Guerra de Malvinas", :regions => [:ar]}],
      5 => [{:mday => 1, :name => "Día del Trabajador", :regions => [:ar]},
            {:mday => 25, :name => "Día de la Revolución de Mayo", :regions => [:ar]}],
      6 => [{:mday => 20, :name => "Día de la Bandera", :regions => [:ar]}],
      7 => [{:mday => 8, :name => "Feriado puente turístico", :regions => [:ar]},
            {:mday => 9, :name => "Día de la Independencia", :regions => [:ar]}],
      8 => [{:mday => 15, :name => "Paso a la Inmortalidad del General José de San Martín", :regions => [:ar]}],
      10 => [{:mday => 12, :name => "Día del Respeto a la Diversidad Cultural", :regions => [:ar]}],
      11 => [{:mday => 20, :name => "Día de la Soberanía Nacional", :regions => [:ar]}],
      12 => [{:mday => 8, :name => "Inmaculada Concepción de María", :regions => [:ar]},
            {:mday => 9, :name => "Feriado puente turístico", :regions => [:ar]},
            {:mday => 25, :name => "Navidad", :regions => [:ar]}]
      }
    end

    def self.custom_methods
      {
        
      }
    end
  end
end
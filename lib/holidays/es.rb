module Holidays
  # This file is generated by the Ruby Holiday gem.
  #
  # Definitions loaded: data/es.yaml
  #
  # To use the definitions in this file, load them right after you load the 
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'holidays/es'
  #
  # More definitions are available at http://code.dunae.ca/holidays.
  module ES # :nodoc:
    DEFINED_REGIONS = [:es, :es_m, :es_cn, :es_cm, :es_pv, :es_ct, :es_na, :es_v, :es_vc, :es_mu, :es_lo, :es_ib, :es_ga, :es_an, :es_ce, :es_o, :es_ex, :es_ar, :es_cl]

    HOLIDAYS_BY_MONTH = {
      5 => [{:mday => 1, :name => "Día del Trabajador", :regions => [:es]},
            {:mday => 2, :name => "Fiesta de la Comunidad", :regions => [:es_m]},
            {:mday => 30, :name => "Día de las Canarias", :regions => [:es_cn]},
            {:mday => 31, :name => "Día de la Región Castilla-La Mancha", :regions => [:es_cm]}],
      0 => [{:function => lambda { |year| Holidays.easter(year)-3 }, :function_id => "easter(year)-3", :name => "Jueves Santo", :regions => [:es_pv, :es_ct, :es_na, :es_v, :es_vc]},
            {:function => lambda { |year| Holidays.easter(year)-2 }, :function_id => "easter(year)-2", :name => "Viernes Santo", :regions => [:es]},
            {:function => lambda { |year| Holidays.easter(year)+1 }, :function_id => "easter(year)+1", :name => "Lunes de Pascua", :regions => [:es_pv, :es_ct, :es_na, :es_v, :es_vc]}],
      11 => [{:mday => 1, :name => "Todos los Santos", :regions => [:es]}],
      6 => [{:mday => 9, :name => "Día de la Región de Murcia", :regions => [:es_mu]},
            {:mday => 9, :name => "Día de La Rioja", :regions => [:es_lo]}],
      1 => [{:mday => 1, :name => "Año Nuevo", :regions => [:es]},
            {:mday => 6, :name => "Día de Reyes", :regions => [:es]}],
      12 => [{:mday => 6, :name => "Día de la Constitución", :regions => [:es]},
            {:mday => 8, :name => "Inmaculada Concepción", :regions => [:es]},
            {:mday => 25, :name => "Navidad del Señor", :regions => [:es]},
            {:mday => 26, :name => "San Esteban", :regions => [:es_ib, :es_ct]}],
      7 => [{:mday => 23, :name => "Santiago Apostol", :regions => [:es_ga]}],
      2 => [{:mday => 28, :name => "Día de Andalucía", :regions => [:es_an]}],
      8 => [{:mday => 15, :name => "Asunción", :regions => [:es]}],
      3 => [{:mday => 1, :name => "Día de las Islas Baleares", :regions => [:es_ib]},
            {:mday => 19, :name => "San José", :regions => [:es_v, :es_vc, :es_cm, :es_mu, :es_m]}],
      9 => [{:mday => 2, :name => "Día de Ceuta", :regions => [:es_ce]},
            {:mday => 8, :name => "Día de Asturias", :regions => [:es_o]},
            {:mday => 8, :name => "Día de Extremadura", :regions => [:es_ex]},
            {:mday => 11, :name => "Fiesta Nacional de Cataluña", :regions => [:es_ct]}],
      4 => [{:mday => 23, :name => "San Jorge", :regions => [:es_ar, :es_cl]},
            {:mday => 23, :name => "Día de Aragón", :regions => [:es_ar]}],
      10 => [{:mday => 9, :name => "Día de Valencia", :regions => [:es_vc, :es_v]},
            {:mday => 12, :name => "Día de la Hispanidad", :regions => [:es]}]
    }
  end


end

Holidays.merge_defs(Holidays::ES::DEFINED_REGIONS, Holidays::ES::HOLIDAYS_BY_MONTH)

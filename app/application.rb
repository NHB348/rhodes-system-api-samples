require 'rho/rhoapplication'

class AppApplication < Rho::RhoApplication
  
  def initialize
    super
    @default_menu = { "Home" => :home, 
                      "Refresh" => :refresh, 
                      "Sync" => :sync, 
                      "Options" => :options, 
                      "Log" => :log, 
                      :separator => nil, 
                      "Close" => :close } 
    $mt_string = ""
    
  end
  
  def on_activate_app
    $mt_string += "Activation callback called<br/>"
    #start geolocation
    GeoLocation.known_position?
    #GeoLocation.set_notification("/app/Settings/geo_callback", "")
  end

  def on_deactivate_app
    $mt_string += "Deactivation callback called<br/>"
  end

end

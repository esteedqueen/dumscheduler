class Location < ActiveRecord::Base


  has_many :schedules

  # geocoded_by :address
  # after_validation :geocode

  # reverse_geocoded_by :latitude, :longitude do |obj, geo| 
  #   obj.state = geo.state
  #   obj.country_code = geo.country_code
  #   obj.address = [geo.state, geo.country_code].join(",")
  # end
  # after_validation :reverse_geocode 

  private
  ## Strong Parameters 
  def location_params
    params.require(:location).permit(:address, :latitude, :longitude )
  end

end

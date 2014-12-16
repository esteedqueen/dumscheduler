class StaticPagesController < ApplicationController

  def home
    @locations = Location.all
    @location_array = []

    @locations.each do |location|
      @location_array << [location.address, location.id]
    end
  end

  def about
  end

  def login
  end

  def signup
  end

  def contact
  end
end

class Location < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  def address
    [:street, :suburb, :state, :country, :postcode].compact.join(', ')
  end
end

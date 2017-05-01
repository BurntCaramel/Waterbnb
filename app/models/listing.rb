class Listing < ApplicationRecord
  belongs_to :host, class_name: 'User'
  validates :address, presence: true

  # Geocoder gem: https://github.com/alexreisner/geocoder
  geocoded_by :full_address, latitude: :lat, longitude: :long
  after_validation :geocode

  def country
    ISO3166::Country.new(country_code)
  end

  def full_address
    [address, city, state, country.name].compact.join(', ')
  end

  def country_code_upper
    country_code.upcase
  end

  def price_cents
    (price * 100).to_i
  end
end

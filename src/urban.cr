require "http/client"
require "./urban/*"

module Urban
  # URL to the Urban Dictionary API
  API_URL = "http://api.urbandictionary.com/v0"

  # Returns a `Listing` of matching definitions for `term`.
  def self.define(term : String)
    response = HTTP::Client.get "#{API_URL}/define?term=#{URI.escape term}"
    Listing.from_json response.body
  end

  # Returns a random listing of `Definition`s, without any additional metadata
  def self.random
    response = HTTP::Client.get "#{API_URL}/random"
    RandomListing.from_json(response.body).list
  end
end

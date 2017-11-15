require "json"

module Urban
  # An Urban Dictionary definition
  struct Definition
    JSON.mapping(
      definition: String,
      word: String,
      thumbs_up: UInt32,
      thumbs_down: UInt32,
      author: String,
      id: {key: "defid", type: UInt32},
      permalink: String,
      example: String
    )
  end

  # A set of definitions, with additional metadata about the result set
  struct Listing
    JSON.mapping(
      tags: Array(String),
      result_type: String,
      list: Array(Definition),
      sounds: Array(String)
    )
  end

  # Random listings contain no metadata, only the defintions
  struct RandomListing
    JSON.mapping(list: Array(Definition))
  end
end

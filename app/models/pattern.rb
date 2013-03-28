class Pattern
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name
  field :description
  field :price
  
end

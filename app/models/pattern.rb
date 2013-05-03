class Pattern
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name
  field :description

  validates :name, presence: true

  belongs_to :product
  
end

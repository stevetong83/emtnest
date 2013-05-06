class Pattern
  include Mongoid::Document
  include Mongoid::Timestamps

  field :version
  field :description

  validates :version, :description, presence: true

  belongs_to :product
  
end

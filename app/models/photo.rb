class Photo
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name
  field :description

  belongs_to :product

end

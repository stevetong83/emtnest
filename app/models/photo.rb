class Photo
  include Mongoid::Document
  include Mongoid::Timestamps

  field :photo
  field :description

  belongs_to :product

end

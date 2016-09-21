class Apartment < ActiveRecord::Base
  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  geocoded_by :full_address
  after_validation :geocode
  belongs_to :owner
  belongs_to :user
  validates :owner, presence: true
  def full_address
    address1 + ' ' + address2 + ', '+ city + ', ' + postal_code + ', '+ state + ', ' + country
  end
end

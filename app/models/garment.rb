class Garment < ActiveRecord::Base
  belongs_to :collection
  GARMENT_KINDS = %w[bisutería vestido blusa]

  validates :name, :description, :kind,:collection, presence: true
  validates_inclusion_of :kind, in: GARMENT_KINDS

  def self.order_by_date
    all.order 'created_at desc'
  end

  def self.latest_garments
    where latest: true
  end
end

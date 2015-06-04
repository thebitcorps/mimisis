class Collection < ActiveRecord::Base
  has_many :garments

  validates :name, :description, presence: true
  validates :name, uniqueness: true

  def self.order_by_date
    all.order 'created_at desc'
  end

end

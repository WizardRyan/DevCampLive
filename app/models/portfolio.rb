class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                allow_destroy: true,
                                reject_if: lambda {|x| x['name'].blank?}
  validates_presence_of :title, :body
  
  mount_uploader :thumbImage, PortfolioUploader
  mount_uploader :mainImage, PortfolioUploader

  
  def self.angular
    where(subtitle: "Angular")
  end
  
  def self.by_position
    order("position ASC")
  end
  
end

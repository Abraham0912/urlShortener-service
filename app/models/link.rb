class Link < ApplicationRecord
  belongs_to :user
  has_many :views

  validates_presence_of :url
  validates :url, format: URI::regexp(%w[http https])
  validates_uniqueness_of :code, message: "El código ya existe, intente de nuevo"
end

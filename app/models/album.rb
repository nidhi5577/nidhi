class Album < ActiveRecord::Base
  belongs_to :publisher
  has_many :songs
  
  validates :name, presence: true, length: { in: 2..50 }
  validates :cover_art, :publisher_id, presence: true
  validates :released_on, presence: true, format: { with: /\A\d{4}-\d{2}-\d{2}\z/, message: "should be in the format YYYY-MM-DD" }

  #Scopes
  scope :recent, -> (n) { where("released_on <= ? and released_on >= ?", Date.today, Date.today-6.months).order("released_on DESC").limit(n) }

end

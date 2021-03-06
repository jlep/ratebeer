class Beer < ActiveRecord::Base
  belongs_to :brewery
  has_many :ratings, :dependent => :destroy

  include RatingsAverage

  def to_s
    name + ' (' + brewery.name + ')'
  end
end

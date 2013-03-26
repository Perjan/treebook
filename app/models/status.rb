class Status < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user  #assumes that the table status has a field user_id

  validates :content, presence: true,
                      length: {minimum: 2}

  validates :user_id, presence: true                      
                      
end

class Status < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user  #assumes that the table status has a field user_id
end

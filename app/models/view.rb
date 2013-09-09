class View < ActiveRecord::Base
  belongs_to :user
  belongs_to :campaign
  # attr_accessible :title, :body
end

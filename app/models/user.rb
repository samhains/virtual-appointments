class User < ActiveRecord::Base
  belongs_to :appointment 
  validates_presence_of :name, :email
end

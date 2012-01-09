class Account < ActiveRecord::Base
  validates_presence_of :name, :initial_value
end

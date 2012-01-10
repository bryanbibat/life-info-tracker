class Account < ActiveRecord::Base
  validates_presence_of :name, :initial_value

  def effective_value
    initial_value - (Transaction.where(source_id: id).sum(:amount)) + 
      (Transaction.where(destination_id: id).sum(:amount))
  end

end

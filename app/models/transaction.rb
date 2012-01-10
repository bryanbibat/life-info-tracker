class Transaction < ActiveRecord::Base
  belongs_to :category
  belongs_to :source, class_name: "Account"
  belongs_to :destination, class_name: "Account"

  def category_display
    category.nil? ? "Uncategorized" : category.name
  end

  def source_display
    source.nil? ? "-Income-" : source.name
  end

  def destination_display
    destination.nil? ? "-Expense-" : destination.name
  end
end

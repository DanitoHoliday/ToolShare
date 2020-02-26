class AddBookedToTools < ActiveRecord::Migration[5.2]
  def change
    add_column :tools, :booked, :boolean, default: false
  end
end

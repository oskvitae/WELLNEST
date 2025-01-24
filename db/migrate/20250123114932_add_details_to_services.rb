class AddDetailsToServices < ActiveRecord::Migration[7.1]
  def change
    add_column :services, :date, :string
    add_column :services, :time, :string
    add_column :services, :location, :string
    add_column :services, :class_size, :string
  end
end

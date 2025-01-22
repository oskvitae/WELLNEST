class AddImageToServices < ActiveRecord::Migration[7.1]
  def change
    add_column :services, :image, :string
  end
end

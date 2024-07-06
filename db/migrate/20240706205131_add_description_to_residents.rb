class AddDescriptionToResidents < ActiveRecord::Migration[7.0]
  def change
    add_column :residents, :description, :string
  end
end

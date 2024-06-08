class AddShiftForCollectionOnTheHouseToResidents < ActiveRecord::Migration[7.0]
  def change
    add_column :residents, :shift_for_collection_on_the_house, :integer
  end
end

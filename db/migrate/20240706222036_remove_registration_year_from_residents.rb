class RemoveRegistrationYearFromResidents < ActiveRecord::Migration[7.0]
  def change
    remove_column :residents, :registration_year, :integer
  end
end

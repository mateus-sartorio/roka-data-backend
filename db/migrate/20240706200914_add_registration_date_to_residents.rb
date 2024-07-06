class AddRegistrationDateToResidents < ActiveRecord::Migration[7.0]
  def change
    add_column :residents, :registration_date, :date
  end
end

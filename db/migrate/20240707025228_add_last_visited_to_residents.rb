class AddLastVisitedToResidents < ActiveRecord::Migration[7.0]
  def change
    add_column :residents, :last_visited, :date
  end
end

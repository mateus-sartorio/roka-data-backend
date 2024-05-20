class RemoveUniquenessFromRokaIdInResidents < ActiveRecord::Migration[7.0]
  def change
    remove_index :residents, :roka_id
    add_index :residents, :roka_id
  end
end

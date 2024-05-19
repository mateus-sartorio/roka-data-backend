class CreateResidents < ActiveRecord::Migration[7.0]
  def change
    create_table :residents do |t|
      t.string :name
      t.integer :situation
      t.integer :roka_id
      t.boolean :has_plaque
      t.datetime :registration_date
      t.string :address
      t.string :reference_point
      t.boolean :lives_in_jn
      t.string :phone
      t.boolean :is_on_whatsapp_group
      t.datetime :birthdate
      t.string :profession
      t.integer :residents_in_the_house
      t.string :observations
      t.boolean :needs_collect_on_the_house

      t.timestamps
    end
  end
end

class CreateCourts < ActiveRecord::Migration[6.1]
  def change
    create_table :courts do |t|
      t.string :name
      t.string :type
      t.string :fees
      t.boolean :lights
      t.string :address
      t.integer :user_id

      t.timestamps
    end
  end
end

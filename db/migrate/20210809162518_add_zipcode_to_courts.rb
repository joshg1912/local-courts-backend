class AddZipcodeToCourts < ActiveRecord::Migration[6.1]
  def change
    add_column :courts, :zipcode, :string
  end
end

class ChangeFeesToInteger < ActiveRecord::Migration[6.1]
  def change
    change_column :courts, :fees, "integer USING CAST(fees AS integer)"
  end
end

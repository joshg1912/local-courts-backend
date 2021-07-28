class ChangeBooleanToString < ActiveRecord::Migration[6.1]
  def change
    change_column :courts, :lights, :string
  end
end

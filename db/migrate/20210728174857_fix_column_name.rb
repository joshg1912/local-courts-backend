class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :courts, :type, :facility
  end
end

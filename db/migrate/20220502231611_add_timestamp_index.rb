class AddTimestampIndex < ActiveRecord::Migration[7.0]
  def change
    add_index :entries, :timestamp
  end
end

class AddActiveToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :active, :boolean
  end
end
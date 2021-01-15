class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.integer :status
      t.references :asker
      t.references :receiver

      t.timestamps
    end
  end
end

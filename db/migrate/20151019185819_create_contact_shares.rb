class CreateContactShares < ActiveRecord::Migration
  def change
    create_table :contact_shares do |t|
      t.integer :contact_id, index: true, presence: true
      t.integer :user_id, index: true, presence: true

      t.timestamps
    end
  end
end

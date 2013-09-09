class CreateViews < ActiveRecord::Migration
  def change
    create_table :views do |t|
      t.references :user
      t.references :campaign

      t.timestamps
    end
    add_index :views, :user_id
    add_index :views, :campaign_id
  end
end

class CreateApiKeys < ActiveRecord::Migration
  def change
    create_table :api_keys do |t|
      t.belongs_to :user
      t.string :key
      t.timestamps null: false
    end
  end
end

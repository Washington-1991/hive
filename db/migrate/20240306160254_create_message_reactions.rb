class CreateMessageReactions < ActiveRecord::Migration[7.1]
  def change
    create_table :message_reactions do |t|
      t.string :icon
      t.references :user, null: false, foreign_key: true
      t.references :message, null: false, foreign_key: true

      t.timestamps
    end
  end
end

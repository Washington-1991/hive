class CreateAptitudes < ActiveRecord::Migration[7.1]
  def change
    create_table :aptitudes do |t|
      t.references :users, null: false, foreign_key: true
      t.string :shoulder
      t.string :hip
      t.string :ankle

      t.timestamps
    end
  end
end

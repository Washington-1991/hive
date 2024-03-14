class RepetitionInString < ActiveRecord::Migration[7.1]
  def change
    change_column :exercices, :repetition, :string
  end
end

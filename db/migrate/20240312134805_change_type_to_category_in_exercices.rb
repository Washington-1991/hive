class ChangeTypeToCategoryInExercices < ActiveRecord::Migration[6.1]
  def change
    rename_column :exercices, :type, :category
  end
end

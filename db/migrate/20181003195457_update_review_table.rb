class UpdateReviewTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :date
    remove_column :reviews, :time
    
    rename_column :reviews, :review, :comment
  end
end

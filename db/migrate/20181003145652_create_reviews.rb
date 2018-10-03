class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :review
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end

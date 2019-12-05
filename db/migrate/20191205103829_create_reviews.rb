class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.i :user_id
      t.i :booking_id
      t.i :raiting
      t.s :comments

      t.timestamps
    end
  end
end

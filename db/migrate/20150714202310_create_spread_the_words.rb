class CreateSpreadTheWords < ActiveRecord::Migration
  def change
    create_table :spread_the_words do |t|
      t.string :session_id
      t.string :url
      t.string :why_it_matters_to_me
      t.string :what_it_is
      t.string :why_it_matters_to_them
      t.string :what_im_asking_them_to_do

      t.integer :sender_id
      t.index :sender_id

      t.integer :recipient_id
      t.index :recipient_id

      t.timestamps null: false
    end
  end
end

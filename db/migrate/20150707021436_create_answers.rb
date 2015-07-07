class CreateAnswers < ActiveRecord::Migration
  def change
    drop_table :answers
    create_table :answers do |t|
      t.string :content
      t.integer :answer_type_id

      t.timestamps null: false
    end
  end
end

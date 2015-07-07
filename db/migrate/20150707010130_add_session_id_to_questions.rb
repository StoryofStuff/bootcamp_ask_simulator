class AddSessionIdToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :session_id, :string
  end
end

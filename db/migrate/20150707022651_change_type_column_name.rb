class ChangeTypeColumnName < ActiveRecord::Migration
  def change
    rename_column :answer_types, :type, :short_answer 
  end
end

class AddPrefillIdToSpreadTheWords < ActiveRecord::Migration
  def change
    add_column :spread_the_words, :prefill_id, :integer
    add_index :spread_the_words, :prefill_id
  end
end

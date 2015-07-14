class CreateStwPrefills < ActiveRecord::Migration
  def change
    create_table :stw_prefills do |t|

      t.timestamps null: false
    end
  end
end

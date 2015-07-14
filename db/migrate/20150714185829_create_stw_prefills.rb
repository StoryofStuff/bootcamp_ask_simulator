class CreateStwPrefills < ActiveRecord::Migration
  def change
    create_table :stw_prefills do |t|

      t.string :title
      t.string :url
      t.string :why_it_matters_to_me
      t.string :what_it_is
      t.string :why_it_matters_to_them
      t.string :what_im_asking_them_to_do

      t.timestamps null: false
    end
  end
end

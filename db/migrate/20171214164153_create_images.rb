class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :url
      t.text :alt
      t.text :caption

      t.timestamps
    end
  end
end

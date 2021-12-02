class CreateNetflixes < ActiveRecord::Migration[6.0]
  def change
    create_table :netflixes do |t|
      t.string :title
      t.string :genre
      t.string :year
      t.string :country
      t.string :published_at
      t.text :description

      t.timestamps
    end
  end
end

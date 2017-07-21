class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.string :title
      t.string :authorName1
      t.string :authorName2
      t.string :authorName3
      t.string :authorName4
      t.string :authorName5
      t.string :comAuthor
      t.text :comAddr
      t.string :year
      t.string :journal
      t.references :survey, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

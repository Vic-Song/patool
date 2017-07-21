class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :one
      t.string :two
      t.string :three
      t.string :four
      t.string :five
      t.string :six
      t.string :seven
      t.string :eight
      t.string :night
      t.string :ten
      t.string :eleven
      t.string :twelve
      t.string :thirteen
      t.string :fourteen
      t.string :fifteen
      t.string :sixteen
      t.string :seventeen
      t.string :eighteen
      t.string :nighteen
      t.string :twenty
      t.string :twentyone
      t.string :twentytwo
      t.string :twentythree
      t.string :twentyfour
      t.string :twentyfive
      t.string :twentysix
      t.string :twentyseven
      t.string :twentyeight
      t.string :twentynine
      t.string :thirty
      t.string :thirtyone
      t.string :thirtytwo
      t.string :thirtythree
      t.string :thirtyfour
      t.string :thirtyfive
      t.string :thirtysix
      t.string :thirtyseven
      t.string :thirtyeight
      t.string :thirtynine
      t.string :fourty
      t.string :fourtyone
      t.string :fourtytwo
      t.string :fourtythree
      t.string :fourtyfour
      t.string :fourtyfive
      t.string :fourtysix
      t.string :fourtyseven
      t.string :fourtyeight
      t.string :fourtynine
      t.string :fifty
      t.references :paper, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.integer :white_elo
      t.integer :black_elo
      t.string :url
      t.string :pgn

      t.timestamps
    end
  end
end

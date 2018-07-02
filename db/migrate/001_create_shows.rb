class CreateShows < ActiveRecord::Migration

  def change
    create_table :shows do |t|
      t.string :name
      t.string :network
      t.text :day
      t.integer :rating
    end
  end

  def highest_rating
    Show.maximum(:rating)
  end


end

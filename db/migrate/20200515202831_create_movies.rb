class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :summary
      t.integer :vote_counting
      t.string :poster_url
      t.date :release_date

      t.timestamps
    end
  end
end

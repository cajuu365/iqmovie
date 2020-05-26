class CreateMovieshows < ActiveRecord::Migration[6.0]
  def change
    create_table :movieshows do |t|
      t.string :original_name
      t.string :backdrop_path

      t.timestamps
    end
  end
end

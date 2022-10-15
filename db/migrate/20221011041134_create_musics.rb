class CreateMusics < ActiveRecord::Migration[6.1]
  def change
    create_table :musics do |t|
      t.string :composer
      t.string :song

      t.timestamps
    end
  end
end

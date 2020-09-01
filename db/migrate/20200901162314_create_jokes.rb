class CreateJokes < ActiveRecord::Migration[6.0]
  def change
    create_table :jokes do |t|
      t.string :type
      t.text :setup
      t.text :punchline

      t.timestamps
    end
  end
end

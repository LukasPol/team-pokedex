class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.references :trainer, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateTopLoggedlns < ActiveRecord::Migration[7.0]
  def change
    create_table :top_loggedlns do |t|
      t.string :new

      t.timestamps
    end
  end
end

class CreateSquadrons < ActiveRecord::Migration
  def change
    create_table :squadrons do |t|
      t.string :name
      t.string :patch
      t.string :nickname

      t.timestamps
    end
  end
end

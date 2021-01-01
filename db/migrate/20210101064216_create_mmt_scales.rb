class CreateMmtScales < ActiveRecord::Migration[6.1]
  def change
    create_table :mmt_scales do |t|
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end

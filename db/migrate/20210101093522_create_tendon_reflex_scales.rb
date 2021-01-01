class CreateTendonReflexScales < ActiveRecord::Migration[6.0]
  def change
    create_table :tendon_reflex_scales do |t|
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end

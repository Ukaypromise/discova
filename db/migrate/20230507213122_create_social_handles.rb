class CreateSocialHandles < ActiveRecord::Migration[7.0]
  def change
    create_table :social_handles do |t|
      t.string :name
      t.string :url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

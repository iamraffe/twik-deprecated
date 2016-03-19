class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :subdomain
      t.string :slug
      t.string :email
      t.timestamps null: false
    end
    add_index :groups, :slug, unique: true
  end
end

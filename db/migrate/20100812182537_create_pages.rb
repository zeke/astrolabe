class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title
      t.text :body
      t.string :cached_slug

      t.timestamps
    end
    add_index :pages, :cached_slug
    add_index :pages, :title
  end

  def self.down
    drop_table :pages
  end
end

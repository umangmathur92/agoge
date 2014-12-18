class CreateTopicsUsers < ActiveRecord::Migration
  def up
    create_table :topics_users do |t|
      t.references :topic
      t.references :user
      t.string :priority, default: 'normal'
      t.boolean :present, default: false
    end
  end

  def down
    drop_table :topics_users
  end
end

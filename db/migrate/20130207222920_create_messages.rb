class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :subject
      t.string :to
      t.string :cc
      t.string :from
      t.string :bcc
      t.text :body
      t.datetime :created_at
      t.datetime :deleted_at
      t.datetime :read_at

      t.timestamps
    end
  end
end

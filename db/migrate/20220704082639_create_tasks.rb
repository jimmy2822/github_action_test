# frozen_string_literal: true

class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.string :title
      t.text :content
      t.string :tag
      t.date :build_time
      t.date :start_time
      t.date :end_time
      t.string :priority
      t.string :state

      t.timestamps
    end
  end
end

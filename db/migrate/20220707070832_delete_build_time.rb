# frozen_string_literal: true

class DeleteBuildTime < ActiveRecord::Migration[7.0]
  def up
    remove_column :tasks, :build_time
  end

  def down
    add_column :tasks, :build_time
  end
end

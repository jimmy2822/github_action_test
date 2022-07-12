# frozen_string_literal: true

class ChangeStartTimeDatetime < ActiveRecord::Migration[7.0]
  def up
    change_column :tasks, :start_time, :datetime
  end

  def down
    change_column :tasks, :datetime, :start_time
  end
end

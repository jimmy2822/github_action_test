# frozen_string_literal: true

class ChangeEndTimeDatetime < ActiveRecord::Migration[7.0]
  def up
    change_column :tasks, :end_time, :datetime
  end

  def down
    change_column :tasks, :end_time, :date
  end
end

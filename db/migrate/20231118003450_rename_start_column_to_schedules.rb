class RenameStartColumnToSchedules < ActiveRecord::Migration[6.1]
  def change
    rename_column :schedules, :start, :start_date
  end
end

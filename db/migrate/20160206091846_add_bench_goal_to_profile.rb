class AddBenchGoalToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :bench_goal, :integer
    add_column :profiles, :bench_current, :integer
  end
end

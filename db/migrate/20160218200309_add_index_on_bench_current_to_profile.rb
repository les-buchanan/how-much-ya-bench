class AddIndexOnBenchCurrentToProfile < ActiveRecord::Migration
  def change
    add_index :profiles, :bench_current
  end
end

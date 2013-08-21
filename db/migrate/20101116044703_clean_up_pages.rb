class CleanUpPages < ActiveRecord::Migration
  def self.up
    Site.each do
      Page.update_all('system = false', "path in ('home', 'system')")
    end
  end

  def self.down
  end
end

class AddSponsorMessageToSponsors < ActiveRecord::Migration
  def change
    add_column :sponsors, :message, :text
  end
end

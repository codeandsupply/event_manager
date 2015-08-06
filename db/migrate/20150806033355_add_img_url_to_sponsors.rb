class AddImgUrlToSponsors < ActiveRecord::Migration
  def change
    add_column :sponsors, :img_url, :string
  end
end

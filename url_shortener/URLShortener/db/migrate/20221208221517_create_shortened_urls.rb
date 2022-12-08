class CreateShortenedUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :shortened_urls do |t|
      t.string :long_url, null: false, unique: false
      t.string :short_url, unique:false
      
      t.timestamps
    end
  end
end

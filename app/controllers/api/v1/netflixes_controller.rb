require 'csv'
class Api::V1::NetflixesController < Api::V1::BaseController
  def create_by_csv
    CSV.foreach(Rails.root.join('lib/netflix_titles.csv'), headers: true) do |row|
      netflix = Netflix.create(
                      title: row['title'],
                      genre: row['listed_in'],
                      year: row['release_year'].to_i,
                      country: row['country'],
                      published_at: row['date_added'],
                      description: row['description']
                      )
      puts "Created #{netflix.title}"
      end
  end



  def index
    @netflixes = Netflix.all.sort_by{|h|h['year']}
    render json: { netflixes: @netflixes  }, status: :ok
  end

end

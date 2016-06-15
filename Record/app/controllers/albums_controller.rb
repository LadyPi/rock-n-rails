class AlbumsController < ApplicationController

	def index
  		@albums = Album.all
  		# render :index
	end

	def show
		@album = Album.find(params[:id])
		render :show #optional
	end

  	def new
	    @album = Album.new
	    render :new #optional
  	end

private

  	def album_params
    	params.require(:album).permit(:title, :artist, :year, :cover_art, :song_count)
  	end

  	def create
	    Album.create(album_params)
	    redirect_to('/albums')
  	end

end

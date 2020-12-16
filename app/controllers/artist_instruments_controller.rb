class ArtistInstrumentsController < ApplicationController

    def index 
        @artist_instruments = ArtistInstrument.all
    end 

    def show
        @artist_instrument = ArtistInstrument.find(params[:id])
    end 

    def new
        @artist_instrument = ArtistInstrument.new
    end 

    def create
        @artist_instrument = ArtistInstrument.create(params.require(:artist_instrument).permit(:artist_id, :instrument_id))
        redirect_to @artist_instrument.artist
    end 

end

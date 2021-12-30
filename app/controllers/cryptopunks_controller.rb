class CryptopunksController < ApplicationController
  def show
    @cryptopunk = Cryptopunk.find(params[:id])

  end

  def index
    @cryptopunks = Cryptopunk.all
  end

end

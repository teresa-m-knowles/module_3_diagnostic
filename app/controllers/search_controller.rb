class SearchController < ApplicationController

  def index
    render locals: {
        facade: SearchResultFacade.new(params[:zip_code])
      }
  end

end

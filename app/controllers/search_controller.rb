class SearchController < ApplicationController

  def index
    render locals: {
        facade: SearchResultFacade.new(params[:q])
      }
  end

end

class SearchController < ApplicationController

  def index
    render locals: {
        facade: SearchResultFacade.new(state: params[:zip])
      }
  end
end

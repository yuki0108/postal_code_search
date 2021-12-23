class SearchController < ApplicationController
  def search
    postal_code = params[:postal_code]
    params = URI.encode_www_form({zipcode: postal_code})
  end
end

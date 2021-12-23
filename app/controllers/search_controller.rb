class SearchController < ApplicationController
  def search
    postal_code = params[:postal_code]
    params = URI.encode_www_form({zipcode: postal_code})
    uri = URI.parse("http://zipcloud.ibsnet.co.jp/api/search?#{params}")
    response = Net::HTTP.get_response(uri)
    result = JSON.parse(response.body)
    result["results"]
  end
end

class SearchController < ApplicationController

  def index
   if params[:query].present?
     tool = Tool.search(params[:query])
   else
     @tools = Tool.all
   end
 end
end

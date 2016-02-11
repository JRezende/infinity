class HomeController < ApplicationController
  #before_filter :redirect_to_page_correct

  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json
    end
  end

  def logged?

  end


  #def redirect_to_page_correct
    #if model_logged
     #redirect_to "/admin/#{model_logged.class.to_s.downcase!}s"
    #end
  #end
end
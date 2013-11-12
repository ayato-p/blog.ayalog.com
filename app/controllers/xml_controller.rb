class XmlController < ApplicationController
  def rss
    request.format = "xml"
    respond_to do |format|
      @feed_title = "ayalog"
      @posts = Post.all.order("created_at desc").limit(10)
      format.xml {render :layout => false}
    end
  end
end

xml.instruct! :xml, :version => "1.0", :encoding => "UTF-8"
xml.rss("version"    => '2.0',
        "xmlns:dc"   => "http://purl.org/dc/elements/1.1/",
        "xmlns:atom" => "http://www.w3.org/2005/Atom") do
  xml.channel do
    xml.title @feed_title
    xml.link(request.protocol + request.host_with_port + url_for(:rss => nil))
    xml.language "ja-ja"
    xml.ttl "40"
    xml.pubDate(Time.now.strftime("%a, %d %b %Y %H:%M:%S %Z"))
 
    @posts.each do |post|
      xml.item do
        xml.title(post.title)
        xml.link(request.protocol + request.host_with_port +
                 url_for(controller: 'posts', action:'show', id: post.id ))
        xml.description(post.content)
        xml.guid(request.protocol + request.host_with_port +
                 url_for(controller: 'posts', action:'show', id: post.id ))
        xml.pubDate(post.created_at)
        xml.author "RssAuthor"
      end
    end
  end
end

require 'open-uri'

class StoryController < ApplicationController
	  def index
	  	rss = SimpleRSS.parse open("http://feeds.christianitytoday.com/christianitytoday/hottopics")
	  	@rss = rss.items
	  end

	   def show
	   	agent = Mechanize.new
	   	agent.get("http://feeds.christianitytoday.com/christianitytoday/hottopics")

	   	@biblestory = agent.page.search(".story-body").map(&:text)
	  
	   end

	   private 
	   def story_params
	   end
end
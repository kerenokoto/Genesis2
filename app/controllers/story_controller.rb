require 'open-uri'

class StoryController < ApplicationController
	  def index
	  	rss = SimpleRSS.parse open("http://feeds.christianitytoday.com/christianitytoday/mostreads")
	  	@rss = rss.items
	  end

	   def show
	   	
	   end

	   private 
	   def story_params
	   end
	   
end
class PostsController < ApplicationController

    def new
        @post = Post.new
  
    end

    def create
        @post = Post.new
        @post ["title"] = params["post"]["title"]
        @post ["description"] = params["post"]["description"]
        @post ["posted_on"] = params["post"]["posted_on"]
        #@post ["place_id"] = params["post"]["place_id"]
        @post ["place_id"] = Place.find_by({"name" => params["post"]["place_id"] }) ["id"]

        @post.save
        redirect_to "/places"
      end


end

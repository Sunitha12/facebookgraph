class FbdetailsController < ApplicationController

	def new
	end

	def create
		@fb_detail = Fbdetail.new
		@FBGraph = Koala::Facebook::API.new(params[:access_token])
		@graph = @FBGraph.get_object("me")
		
		@fb_detail.uid = @graph["id"]
		@fb_detail.name = @graph["name"]
		@fb_detail.user_name = @graph["username"]
		@fb_detail.gender = @graph["gender"]
		@fb_detail.hometown = @graph["hometown"]["name"]
		@fb_detail.bio = @graph["bio"]
		@fb_detail.location = @graph["location"]["name"]
		
		@fb_detail.save
	  	redirect_to fbdetails_path
	end

	def index
		@fbdetails = Fbdetail.all
	end
end

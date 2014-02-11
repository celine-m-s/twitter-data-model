class Tweet 

	def new
		@tweet = Tweet.new
	end

	def create
		@tweet = params[:tweet]
	end

	def show
		@tweet
	end

	def list
		@tweet.all 
	end

end
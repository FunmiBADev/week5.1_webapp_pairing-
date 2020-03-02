require "sinatra"

configure do 
	set:session_secret, "trying this out"

get '/' do  
	"Hello World"
	
end
get "/secret" do 
	"Happy Dance!"
	"Third attemp using shotgun"
	end

get "/cat" do 
	erb(:index)
	# erb "Cat visitor <%= 6 + 12 %>!"

end
end
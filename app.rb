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

get "/random-cat" do 
	@name = ["Foxy Fumz", "Racy Rita", "Handy Hodan","Saucy Sally"].sample
	@color = ["Red", "Purple"].sample
	erb(:index)
	# erb "Cat visitor <%= 6 + 12 %>!"
end

get "/cat-form" do 
	erb(:cat_form)
end

post "/named-cat" do
	p params
	@name = params[:name]
	@color = params[:color]
	erb(:index)
end

end
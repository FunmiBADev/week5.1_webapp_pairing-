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
	'<div style="border: 3px dashed red">
	<img src ="http://bit.ly/1eze8aE">
	</div>'

end
end
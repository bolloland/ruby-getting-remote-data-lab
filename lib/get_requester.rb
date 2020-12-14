require 'net/http'
require 'open-uri'
require 'json'

class GetRequester  #request JSON data

    #URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
    def initialize(url)
    end
    
    def get_response_body
         uri = URI.parse(URL) #creates variable for parsed data from site
        response = Net::HTTP.get_response(uri) #data after request from site
        response.body
    end

    def parse_json
        people = JSON.parse(self.get_response_body)
        people.collect do |person|
            person
        end
    end


   #return Ruby Hash/Array
end


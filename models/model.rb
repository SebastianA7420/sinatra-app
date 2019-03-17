require 'net/http'
url = 'https://us.jooble.org/api/'
key = 'e0360973-6d98-42f9-b197-e783b75c6e87'
#create uri for request
uri = URI.parse(url + key)
#prepare post data
post_args = {
	'content' => "{ keywords: '@desired_job', location: '@desired_location', salary: '@desired_salary}"
}
#send request to the server
resp, data = Net::HTTP.post_form(uri, post_args)

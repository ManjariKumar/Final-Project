require 'rubygems'
require 'oauth'

consumer_key='oPevF3w5-ANrHDRIznGwFw'

consumer_secret='rTTwTO3tbCjyTS1vSJqbZm2ISy4'
token= 'C3cw4dPVxgpzllJ3p8OOlYxX4xMDv6nE'
token_secret='_ML0UdN_kK3GWSbCRIpcbAtbpkw'
api_host='api.yelp.com'

consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
access_token = OAuth::AccessToken.new(consumer, token, token_secret)
@yelp_return = access_token

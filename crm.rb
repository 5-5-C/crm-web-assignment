# Implement the new web-based CRM here.
# Do NOT copy the CRM class from the old crm assignment, as it won't work at all for the web-based version!
# You'll have to implement it from scratch.
require_relative 'contact'
require 'sinatra'

#fake data
Contact.create('Jim', 'Brock', 'jim@gmail.com', 'Booty Commander')
Contact.create('Anja', 'Gusev', 'anja@gmail.com', 'Booty Queen')
Contact.create('Mark', 'Zuckerberg', 'mark@gmail.com', 'Booty Private')

get '/' do
  @crm_app_name = "Bitmaker's CRM"
  erb :index
end

get '/contacts' do
  erb :contacts
end

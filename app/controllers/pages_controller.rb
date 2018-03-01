class PagesController < ApplicationController
 
 def home
  redirect_to donate_path if logged_in?
 end
 
 def about
     
 end
 
 def donate
     
 end
 
 def faq
 
 end
end

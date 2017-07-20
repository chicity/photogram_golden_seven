class PicturesController < ApplicationController
    def new_form
   
    # here are the parameters: {"an_id"=>"5"} -- "an_id" came from when we assigned it in the routes
    the_id_number = params["an_id"] #what does params mean again?
    pic = Photo.find(the_id_number) #looks up 
    
    @the_source = pic.source
    @the_caption = pic.caption
    
    #alt: @pic = Photo.find(parms["an_id]") // in View template source changes
    render("pic_templates/new_form.html.erb")
    end
    
    def create_row
    

    p = Photo.new
    p.source = params["the_source"]
    p.caption = params["the_caption"]
    p.save 
    
    @photo_count = Photo.count
    render("pic_templates/create_row.html.erb")

    end

    def index
    
    
        render("pic_templates/index.html.erb")

    end
    
    def show
    
        
        render("pic_templates/index.html.erb")
    end


    
    
end
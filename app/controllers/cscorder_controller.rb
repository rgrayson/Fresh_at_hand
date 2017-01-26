class CscorderController < ApplicationController

def edit
    
    #render html: params and return
    
    #needed to be edit action only to generate auth token !!!!
    # does not do this if #show. 
    
    #show menu line items
    
    #button disable flag
    @flg=false
    
    @t=Cscorderli.where("cscorder_id=?",params[:id]).order("category,itemdesc")
    if @t.any?
        #Ok
        #set @t2 for order status related
        @t2=Cscorder.find(params[:id])
        if @t2.ordsts.to_i >2 
            @flg=true
        end    
    else
        #no records??
        flash[:notice]="Error: No items for menu!!"
        redirect_to :back and return
    end
    
    #render edit.htmt.erb
    
    
end    


def update
   
   #performs Submit functions for order. This is really
   #an Update as order is already created.
   t=Cscorder.find(params[:id])
   t.ordsts=2
   t.submitted_dte=Time.now
   t.submitted_by=session[:u]
   if t.save
         #sucess
   else
        #error
        flash[:notice]="ERROR..Submit Failed."
   end    
    redirect_to :back and return

end    
    

end

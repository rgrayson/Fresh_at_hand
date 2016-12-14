class CscorderliController < ApplicationController

def edit
    #update Cscorderli model with qty entered
    #render html: params and return
    
    #check for valid data
    @t=Cscorderli.where("id=?",params[:pk])
    if @t.any?
       #Ok found, controller will redirect to edit view
    else
       flash[:notice]="ERROR: Cannot locate item in menu!!" 
       redirect_to cscorder_path(id: params[:id]) and return
    end
 
    
end

def update

    #Updates qtyord for Cscorderli
    #params[:id] is order id not orderli id.  Why???
    @t=Cscorderli.find(params[:line_id])
    @t.qtyord= params[:newqty]
    if @t.save
        #sucess
    else
        #error
        flash[:notice]="ERROR..Qty must be between 0 and 100."
    end    
    
    redirect_to cscorder_path, :method => "get" and return
   
end 




end

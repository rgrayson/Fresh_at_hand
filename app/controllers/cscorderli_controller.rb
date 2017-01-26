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

   #render html: params and return

    #Updates qtyord for Cscorderli
    #params[:id] is order id not orderli id.  Why???
    @t=Cscorderli.where("id=?",params[:id])
    if @t.any?
        @t.each do |t|
            t.qtyord= params[:newqty]
            if t.save
                #sucess
            else
                #error
                flash[:notice]="ERROR..Qty must be between 0 and 100."
            end
        end
    else
        flash[:notice]="ERROR..Cannot find record to save."    
    end
   
   
    
   #refresh/render form with update
   redirect_to edit_cscorder_path(id: params[:cscorder_id], anchor: params[:a1]), {method:"get"} 
  
end 


end

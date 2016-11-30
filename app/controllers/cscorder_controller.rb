class CscorderController < ApplicationController

def show
    #show menu line items
    @t=Cscorderli.where("cscorder_id=?",params[:id])
    if @t.any?
        #Ok
        #set @t2 for order status related
        @t2=Cscorder.find(params[:id])
    else
        #no records??
        flash[:notice]="Error: No items for menu!!"
    end
end    

def update
    #update Cscorderli model with qty entered
    render html: params and return
    
    #capture params
    pk=params[:pk]
    itemnmbr= params[:itemnmbr]
    qtyord= params[:qtyord]
    id= params[:id]
    
    #validate qty
    if qtyord=""
       flash[:notice]="Invaild Qty Entered!!" 
       redirect_to cscorder_path(id: id) and return
    end
    
    
    
    
    
    
end    

end

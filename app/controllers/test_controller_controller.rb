class TestControllerController < ApplicationController

def test

@t=Cscorderli.where("cscorder_id=84")
render "test"

end    

def test_response

render html: params
#render html: session[:all]

end

def refresh_orderli
end    

end

module ApplicationHelper
    def current_order
        if !session[:orderid].nil?
            Order.find(session[:orderid])
        else
            Order.new
        end
    end
end

class ApplicationController < ActionController::Base
	include CurrentBasket
	before_action :current_basket
end

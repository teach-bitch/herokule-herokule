class ApplicationController < ActionController::Base
	include CurrentBasket
	before_action :set_basket
end

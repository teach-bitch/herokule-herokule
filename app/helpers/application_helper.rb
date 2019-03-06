module ApplicationHelper
	def set_basket
		@basket = Basket.find_by(id: session[:basket_id]) || Basket.create(user_id: current_user.id)
		session[:basket_id] ||= @basket.id
	end
end

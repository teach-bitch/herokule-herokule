module CurrentBasket 
	private

	def current_basket
		@current_basket = Basket.find_by(id: session[:basket_id]) || Basket.create(user_id: current_user.id)
		session[:basket_id] ||= @current_basket.id
	end
end
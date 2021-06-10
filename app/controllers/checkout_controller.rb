class CheckoutController < ApplicationController

  def create
     item = Item.find(params[:id])

     if item.nil?
      redirect root_path
      return
     end

     # setting up a stripe session for payment.
     @session = Stripe::Checkout::Session.create(
       payment_method_types: ['card'], 
       line_items: [{
         name: item.title,
         description: item.description,
         amount: item.price_cents,
         currency: 'cad',
         quantity: 1
       }],
       success_url: checkout_success_url,
       cancel_url: checkout_cancel_url
     )

    respond_to do |format|
      format.js
    end

  end

  def success
  end

  def cancel
  end

end

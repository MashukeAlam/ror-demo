class CombineItemsInCart < ActiveRecord::Migration[6.0]
  def change
  end

  def up
    Cart.all.each do |cart|
      summed_quantities = cart.line_items.group(:product_id).sum(:quantity)

      summed_quantities.each do |product_id, quantity|
        if quantity > 1
          cart.line_items.where(product_id: product_id).delete_all

          item = cart.line_items.build(product_id:product_id)
          item.quantity = quantity
          item.save!
        end
      end
    end
  end
end

class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def add_product(product)
    curr = line_items.find_by(product_id: product.id)

    if curr
      curr.quantity += 1
    else
      curr = line_items.build(product_id: product.id)
    end
    curr
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end
end

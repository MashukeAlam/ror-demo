require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  def newproduct image_url
    product = Product.new(title: "Jim",
      description: "yyy",
      image_url: image_url,
      price: 2)
    return product
  end

  test "product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test "product price must be greater than zero" do
    product = Product.new(title: "Jim",
                          description: "yyy",
                          image_url: "jj.jpg")
    product.price = 0.0
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      product.errors[:price]

    product.price = 1.5
    assert product.valid?
  end

  test "image url should end in proper extensions" do
    good = %w{jim.jpg jim.png jim.gif a.b.v.txt.gif https://lol.png kim.jpeg}
    bad = %w{jim.cpp jim.mp3 jim.txt a.b.v.txt.sys https://lol.txt}
    
    good.each do |curr|
      assert newproduct(curr).valid?
    end

    bad.each do |curr|
      assert newproduct(curr).invalid?
    end

  end

end

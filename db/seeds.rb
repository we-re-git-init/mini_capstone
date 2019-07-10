
# 100.times do
#   product = Product.new(price: rand(50), name: FFaker::Product.product, description: FFaker::HipsterIpsum.paragraph, image_url: FFaker::Image.url)

#   product.save
# end


# image = Image.new(url: "https://images.pexels.com/photos/86731/duck-white-ducks-animal-86731.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", product_id: 10)

products = Product.all

products.each do |product|
  2.times do
    image = Image.new(url: FFaker::Image.url, product_id: product.id)
    image.save!
  end
end

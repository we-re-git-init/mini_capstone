
100.times do
  product = Product.new(price: rand(50), name: FFaker::Product.product, description: FFaker::HipsterIpsum.paragraph, image_url: FFaker::Image.url)

  product.save
end

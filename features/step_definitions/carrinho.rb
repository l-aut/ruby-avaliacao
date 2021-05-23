Então('adicionar o produto {string} ao carrinho') do |produto|
    @produto_car = produto
    find('.right-block .btn.btn-default:nth-child(1)').click
    expect(find('#layer_cart_product_title').text).to eq produto

end

Então('proceder para o checkout') do
    find('.button-container .button-medium').click
    expect(find('.cart_description .product-name').text).to eq @produto_car
  end
Dado("que esteja na página inicial") do
  @home_page.load
end

Quando("buscar pelo produto {string}") do |query|
  @home_page.search(query)
end

Então("devem ser retornados produtos") do
  expect(@search_page.products.first).to have_image
  expect(@search_page.products.first).to have_name
  expect(@search_page.products.first.name.text).to have_content 'shirt'
end

Então('retornar ao catálogo do produto {string}') do |expect_search|
  page.has_css?('#search')
  @lighter = find('.lighter').text
  expect(@lighter).to eql expect_search
end
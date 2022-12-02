#Here I am opening the browser and searching for the Printi website 
#and I am verifying that both are correct 
When('I search the Printi website') do
    #I'm starting google
    visit('')

    #I am checking if the google url is correct
    expect(page).to have_current_path("https://www.google.com/")

    #I'm searching the Printi website
     find(:xpath, "//input[contains(@class,'gLFyf')]").set('Printi').send_keys(:enter)
end


#I'm checking if the search response contains the sentence: Printi. | Mais que uma Gráfica Online
Then('I check if the search response is correct') do
    page.has_text?('Printi. | Mais que uma Gráfica Online') 
end


#I'm clicking on the link that doesn't contain announcement 
When('I access the Printi website') do
    find(:xpath, "//h3[@class='LC20lb MBeuO DKV0Md'][contains(.,'Printi. | Mais que uma Gráfica Online')]").click
end


#I'm checking if the url was opened without announcement
Then('I check if the URL response is correct') do
    expect(page).to have_current_path("https://www.printi.com.br/")
end


#Here I'm searching the selected product 
When('I search the product {string}') do |product|
    find('#input-search-page').set(product)
    find(:xpath, "//button[@type='submit'][contains(.,'Buscar')]").click
    click_link(product)
end


#I'm checked if the url is correct and I'm checked if it contains the correct text
Then('I check if the Caneca product has been opened') do
    expect(page).to have_current_path("https://www.printi.com.br/caneca-personalizada")
    page.has_text?('A companheira de todos os cafés') 
end
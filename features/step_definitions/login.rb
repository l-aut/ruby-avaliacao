Quando('acesso a página de login') do                                            
    @home_page.load
    find('.login').click
    page.has_css?('#create-account_form')
    page.has_css?('#login_form')
 
end                                                                              
                                                                                   
Quando('Faço login com as credencias {string} e {string}') do |email, senha|          
    find('#email').set email
    find('#passwd').set senha
    find('#SubmitLogin').click
end                                                                              
       
Então('recebo a mensagem {string}') do |mensagem|


    if page.has_css?('.info-account')
        @var_log = ".info-account"
    elsif
        @var_log = ".alert-danger"
    end

    expect(find(@var_log).text).to include mensagem
    sleep 10

end

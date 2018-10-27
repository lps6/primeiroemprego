require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'ensures name presence' do
      user = User.new(encrypted_password: '12345678', email: 'meupai@aquelecorno.com', birth_date: '29/02/1996', cpf: '12345678910', about_me: 'Oi amigas eu sou Testinho, o Teste Maravilha, e eu trabalho secretamente como super heroi às terças feiras').save
      expect(user).to eq(false)  
    end


    it 'ensures password presence' do
      user = User.new(name: 'Testinho testy', email: 'meupai@aquelecorno.com', birth_date: '29/02/1996', cpf: '12345678910', about_me: 'Oi amigas eu sou Testinho, o Teste Maravilha, e eu trabalho secretamente como super heroi às terças feiras').save
      expect(user).to eq(false)  
    end


    it 'ensures email presence' do
      user = User.new(name: 'Testinho testy', encrypted_password: '12345678', birth_date: '29/02/1996', cpf: '12345678910', about_me: 'Oi amigas eu sou Testinho, o Teste Maravilha, e eu trabalho secretamente como super heroi às terças feiras').save
      expect(user).to eq(false)  
    end

    
    it 'ensures birth_date presence' do
      user = User.new(name: 'Testinho testy', encrypted_password: '12345678', email: 'meupai@aquelecorno.com', cpf: '12345678910', about_me: 'Oi amigas eu sou Testinho, o Teste Maravilha, e eu trabalho secretamente como super heroi às terças feiras').save
      expect(user).to eq(false)  
    end

    it 'ensures cpf presence' do
      user = User.new(name: 'Testinho testy', encrypted_password: '12345678', email: 'meupai@aquelecorno.com', birth_date: '29/02/1996', about_me: 'Oi amigas eu sou Testinho, o Teste Maravilha, e eu trabalho secretamente como super heroi às terças feiras').save
      expect(user).to eq(false)  
    end

    it 'ensures about me presence' do
      user = User.new(name: 'Testinho testy', encrypted_password: '12345678', email: 'meupai@aquelecorno.com', birth_date: '29/02/1996', cpf: '12345678910').save
      expect(user).to eq(false)  
    end

    it 'should save successfully' do
      user = User.new(name: 'Testinho testy', encrypted_password: '12345678', email: 'meupai@aquelecorno.com', birth_date: '29/02/1996', cpf: '12345678910', about_me: 'Oi amigas eu sou Testinho, o Teste Maravilha, e eu trabalho secretamente como super heroi às terças feiras').save
      expect(user).to eq(false)  
    end
  end
end
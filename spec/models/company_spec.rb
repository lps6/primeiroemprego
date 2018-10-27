require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'ensures name presence' do
      user = User.new(encrypted_password: '12345678', email: 'meupai@aquelecorno.com', cnpj: '12345678901234', about_us: 'Oi amigas eu sou Test S&A, a Companhia de Testes, e eu emprego herois para teste às terças feiras').save
      expect(user).to eq(false)  
    end


    it 'ensures password presence' do
      user = User.new(name: 'Teste S&A', email: 'meupai@aquelecorno.com', cnpj: '12345678901234', about_us: 'Oi amigas eu sou Test S&A, a Companhia de Testes, e eu emprego herois para teste às terças feiras').save
      expect(user).to eq(false)  
    end


    it 'ensures email presence' do
      user = User.new(name: 'Teste S&A', encrypted_password: '12345678', cnpj: '12345678901234', about_us: 'Oi amigas eu sou Test S&A, a Companhia de Testes, e eu emprego herois para teste às terças feiras').save
      expect(user).to eq(false)  
    end


    it 'ensures cnpj presence' do
      user = User.new(name: 'Teste S&A', encrypted_password: '12345678', email: 'meupai@aquelecorno.com', about_us: 'Oi amigas eu sou Test S&A, a Companhia de Testes, e eu emprego herois para teste às terças feiras').save
      expect(user).to eq(false)  
    end


    it 'ensures about us presence' do
      user = User.new(name: 'Teste S&A', encrypted_password: '12345678', email: 'meupai@aquelecorno.com', cnpj: '12345678901234').save
      expect(user).to eq(false)  
    end
  end
end

    

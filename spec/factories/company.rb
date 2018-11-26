FactoryGirl.define do
    factory :company do
      name "Test Company"
      email "test@example.com"
      password "please123"
      cnpj "12345678901234"
      about_us "We are a test company"
    end
  end
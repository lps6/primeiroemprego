Feature: Company can create a Quest Crud

Scenario: Creating a quest with 5 questions
  Given that I am on the "Dashboard"
  When I follow "Nova Quest"
  Then I should be on the page "New Quest Page"
  When I fill in "quest_title" with "Picard vs Kirk"
  And I fill in "quest_description" with "Uma das maiores dúvidas da história, quem foi o melhor capitão da U.S.S. Enterprise?"
  And I fill in "quest_quant" with "5"
  And I generate "5"
  And I press "Concluído"
  Then I should be on the page "Quest"


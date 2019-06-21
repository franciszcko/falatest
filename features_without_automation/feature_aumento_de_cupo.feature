Feature: increase_quota 
I want to applicate increase_quota 
Rules:
user_auth:true

Background:
Given I a customer with login sucessful 
And I need increase quota your credit card 
And I have a  quota with a amount of $100000 
And I have a maximun amount to aplicate of $100000000
 
Scenario Outline: Solicitar <increase_quota>.  
Given the custumer into website with login sucessful
Then the custumer select menu "Tarjeta de crédito" and option "Solicitar aumento de cupo"   
When <web_element_txt_id> is present the page it's load 
And the custumer in the <web_element_txt_id> to write the <amount> of increase_quota
Then custumer press button "Enviar"
And press buton "Aceptar" on dialog box 

Examples: 
	|web_element_txt_id| amount  |      increase_quota     |
	|id_element        |100000000|Flujo Critico Valor Mayor|
	|name              |   100001|Flujo Critico Valor Menor|
	|xpath_element     |100000001|Excede Máximo a solicitar|
	|class_path        |    99999|Monto menor que el actual|

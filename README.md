IN PROGRESS 😄  

<details>
<summary>DESCRIÇÃO DO DESAFIO // CHALLENGE DESCRIPTION </summary>
<details>
<summary>Desafio QT/QML 🇧🇷 </summary> 

O desafio consiste no seguinte: com base no CSV em anexo, construa um método que receba uma hora do dia como input no formato HH:MM, sendo HH entre 1 e 24 e MM entre 00 e 60, e retorne uma lista de strings com os nomes dos restaurantes que estão abertos nessa hora. 
Exemplo: `availableHours("17:45");` retornando `["RestaurantA", "RestaurantB"]`.

A aplicação deve possuir UI feita com um input de hora para ser passado ao método `availableHours` e exibir o resultados do método em um componente de tela à sua escolha.

Atenção: O CSV em anexo não é simplesmente a estrutura que dita como será mapeado a sua classe de Restaurante, o arquivo CSV vai ser um parâmetro no seu método que processa o arquivo CSV. Não precisa se preocupar com time zones, vamos supor que todas as horas são locais.
O time espera que você entregue os requisitos mínimos:
- Funcionar;
- Suíte de testes unitários que sejam relevantes;
- README explicando como funciona o projeto e o por que das suas escolhas e também uma documentação do seu código.

O que será avaliado:
- Qualidade do código (funcionalidade, manutenibilidade, desempenho);
- Arquitetura;
- Testes de unidade;
- Utilização do Git.

O desafio deve ser entregue usando o Qt 5.15 / 6.5 num repositório público do GitHub para que o time possa avaliar a qualidade da sua entrega.

A implementação da UI deve ser feita em QML e o método `availableHours` deve estar em C++.
Dê preferência em expor os dados do C++ para o QML em forma de componente QML.

Documentações QT:
- [Qt 5.15 Documentation](https://doc.qt.io/qt-5.15/)  
- [Qt 5 QML Reference](https://doc.qt.io/qt-5/qmlreference.html)  
- [QML Book](http://qmlbook.github.io/)  
- [Qt 5 QML Modules](https://doc.qt.io/qt-5/qtqml-modules-topic.html)  
- [Qt 6.5 QML Book](https://www.qt.io/product/qt6/qml-book) (Se decidir usar Qt 6.5)  

</details>

<details>
<summary>QT/QML Challenge 🇺🇸 </summary> 

The challenge consists of the following: based on the attached CSV, build a method that receives a time of day as input in the format HH:MM, where HH is between 1 and 24 and MM is between 00 and 60, and returns a list of strings with the names of the restaurants that are open at that time. 
Example: `availableHours("17:45");` returning `["RestaurantA", "RestaurantB"]`.

The application should have a UI with an input for the time to be passed to the `availableHours` method and display the method's results in a screen component of your choice.

Note: The attached CSV is not simply the structure that dictates how your Restaurant class will be mapped; the CSV file will be a parameter in your method that processes the CSV file. You don't need to worry about time zones; let's assume all times are local.
The team expects you to deliver the minimum requirements:
- Functionality;
- Relevant unit test suite;
- README explaining how the project works and why you made your choices, as well as documentation for your code.

You will be evaluated on:

Code quality (functionality, maintainability, performance);
- Architecture;
- Unit tests;
- Use of Git.

The challenge must be delivered using Qt 5.15 / 6.5 in a public GitHub repository so the team can evaluate the quality of your delivery.

The UI implementation should be done in QML and the availableHours method should be in C++.
Preferably, expose the C++ data to QML in the form of a QML component.

Qt Documentations:

- [Qt 5.15 Documentation](https://doc.qt.io/qt-5.15/)  
- [Qt 5 QML Reference](https://doc.qt.io/qt-5/qmlreference.html)  
- [QML Book](http://qmlbook.github.io/)  
- [Qt 5 QML Modules](https://doc.qt.io/qt-5/qtqml-modules-topic.html)  
- [Qt 6.5 QML Book](https://www.qt.io/product/qt6/qml-book) (If you decide to use Qt 6.5)  

</details>
</details>


function render_question_mult(){
    var item = form.addMultipleChoiceItem()
            .setTitle('Do you prefer cats or dogs?')
            .setChoiceValues(['Cats','Dogs'])
            .showOtherOption(true);
          
  }
  
  function render_question_check(){ 
          var item = form.addCheckboxItem();
            item.setTitle('What condiments would you like on your hot dog?');
            item.setChoices([
            item.createChoice('Ketchup'),
            item.createChoice('Mustard'),
            item.createChoice('Relish')
        ]);
              
  }
  
  function render_question_grid(){ 
          var item = form.addGridItem()
           .setTitle('Rate your interests')
           .setRows(['Cars', 'Computers', 'Celebrities'])
           .setColumns(['Boring', 'So-so', 'Interesting']);
              
  }
    
    //Chamar função de ciração de quests passando 
  function newQuest() {
    var form = FormApp.create(quest_name);
    switch(type) {
      case "mult":
        questions.forEach(render_question_mult);
    }
    Logger.log('Published URL: ' + form.getPublishedUrl());
    Logger.log('Editor URL: ' + form.getEditUrl());
  
  }
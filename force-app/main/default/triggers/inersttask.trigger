/*******************************************
 Opportunity trigger inersttask
 
 Created y Phanindra Kumar
 ************************************************/

trigger inersttask on Opportunity(after insert, after update) {
  List<Task> taskList = new List<Task>();

  for (Opportunity opp : Trigger.new) {
    if (opp.StageName == 'Closed Won') {
      taskList.add(
        new Task(
          Subject = 'Follow Up Tets task created Just now',
          WhatId = opp.Id
        )
      );
    }
  }

  if (taskList.size() > 0) {
    insert taskList;
  }

}
trigger Emailmanger on Account (before insert, after insert) {
    if(Trigger.isInsert){

    System.debug('Insert operation performed');
        if(Trigger.isBefore){
            //Process before insert
            System.debug('before insert');
            }else if(Trigger.isAfter){
                System.debug('after insert');

            //process after insert
        }
    }
}
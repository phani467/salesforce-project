public with sharing class TrainingPageController {
    

    public FavHeroineWrapper objFavHero {get;set;}
    //Constructor
    public TrainingPageController() {

        objFavHero = new FavHeroineWrapper();
        objFavHero.sName='Sunny leone';
        objFavHero.intAge=35;
        objFavHero.isMarried=true;
        objFavHero.decheight=5.7;






    }
    public class FavHeroineWrapper{


        public String sName {get; set;}
        public Integer intAge{get;set;}
        public Boolean isMarried{get; set;}
        public Decimal decheight{get; set;}
    }




}
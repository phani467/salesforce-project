import { LightningElement, track } from "lwc";

export default class SimpleintrestCalclulator extends LightningElement {
  @track currentOutput;
  principal;
  rateOfInterest;
  noOfyears;
  simpleInterest;

  principleChangeHandler(event) {
    this.principal = parseInt(event.target.value);
  }
  timeChangeHandler(event) {
    this.noOfyears = parseInt(event.target.value);
  }
  inetrestChangeHandler(event) {
    this.rateOfInterest = parseInt(event.target.value);
  }

  calculateInterest() {
    this.currentOutput =
      "Simple interest is : " +
      (this.rateOfInterest * this.noOfyears * this.principal) / 100;
  }
}
import { LightningElement ,track} from "lwc";

export default class Lwc2 extends LightningElement {
 @track time1 = "8:15 PM";
@track Greeting = "Good Evening";
  connectedCallback() {
    this.getTime1();
  }
  getTime1() {
    const date1 = new Date();
    alert(date1);
    const hour1 = date1.getHours();
    //const min = date1.getMinutes();
    this.time1 = this.getHour1(hour1) + this.getMiDay(hour1);
  }
  getHour1(hour) {
    return hour === 0 ? 12 : hour > 12 ? hour - 12 : hour;
  }
  getMiDay(hour) {
    return hour >= 12 ? "PM" : "AM";
  }
}
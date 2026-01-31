import { LightningElement, track } from "lwc";

export default class EmployeeInfo extends LightningElement {
  @track age;
  @track name;
  @track salary;
  @track show = true;
  nameHandler(event) {
    this.name = event.target.value;
  }
  ageHandler(event) {
    this.age = event.target.value;
  }
  salaryHandler(event) {
    this.salary = event.target.value;
  }
  saveHandler() {
    this.show = false;
  }
}
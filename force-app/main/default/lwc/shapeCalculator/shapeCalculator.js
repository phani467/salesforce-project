import { LightningElement, track } from "lwc";

export default class ShapeCalculator extends LightningElement {
  @track currentOutput;
  width;
  height;
  side;
  diagnoal1;
  diagnoal2;

  sideChangehandler(event) {
    this.side = event.target.value;
  }
  widthChangehandler(event) {
    this.width = event.target.value;
  }
  heightChangehandler(event) {
    this.height = event.target.value;
  }
  diagnoal1Changehandler(event) {
    this.diagnoal1 = event.target.value;
  }
  diagnoal2Changehandler(event) {
    this.diagnoal2 = event.target.value;
  }

  calculateSquareHandler() {
    const sq = parseInt(this.side);

    this.currentOutput = "Area of square=" + sq * sq;
  }
  calcilaterechandler() {
    const wid = parseInt(this.width);
    const hei = parseInt(this.height);

    this.currentOutput = "Rectangle area" + wid * hei;
  }
  calRhomhandler() {
    const d1 = parseInt(this.diagnoal1);
    const d2 = parseInt(this.diagnoal2);
    this.currentOutput = "Rhombus area=" + (d1 * d2) / 2;
  }
}
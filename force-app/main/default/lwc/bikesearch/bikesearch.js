import { LightningElement } from 'lwc';

export default class Bikesearch extends LightningElement {

name='Eleantra 2019';
description='body color gray lookig good outside';
category='sedan 4D';
material='steal';
price='10000';
pictureUrl='https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/electrax4.jpg';
ready=false;
connectedCallback(){

    setTimeout(()  =>{
      this.ready= true;

    },3000);
}

}
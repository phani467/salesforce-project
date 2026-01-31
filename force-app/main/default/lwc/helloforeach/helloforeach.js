import { LightningElement } from "lwc";

export default class Helloforeach extends LightningElement {
  contacts = [
    {
      Id: 0,
      Name: "Phanindra Kumar",
      Title: "SeniorFullStackEngineer"
    },

    {
      Id: 1,
      Name: "Akhilesh",
      Title: "AssociateFullStackEngineer"
    },
    {
      Id: 2,
      Name: "Chaitanya",
      Title: "Lead developer"
    },

    {
      Id: 3,
      Name: "Ravi Shankar",
      Title: "Developer"
    }
  ];
}
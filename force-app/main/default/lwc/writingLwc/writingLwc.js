import { LightningElement } from 'lwc';

export default class WritingLwc extends LightningElement {

    
  activeSectionMessage='Welcome Phanindra Kumar';
  handleToggleSection(event) {
    this.activeSectionMessage =
        'Open section name:  ' + event.detail.openSections;
}
    
  
handleSetActiveSectionC() {
  const accordion = this.template.querySelector('.example-accordion');

  accordion.activeSectionName = 'C';
}
}
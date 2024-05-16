import { LightningElement ,wire } from 'lwc';
import {test} from "c/javascript";
import showcontact from '@salesforce/apex/contactlist.showcontact';
export default class Cmp3 extends LightningElement {
@wire(showcontact)
contacts;

showbutton;
changetrue() {
    this.showbutton=true;
    test();
 }

changefalse() {
    this.showbutton=false;
 }


}
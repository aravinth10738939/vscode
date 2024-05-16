import { LightningElement, api,track } from 'lwc';

export default class Cmp1 extends LightningElement {
    @api name;
    @api age;
    @api email;
    @track skill;
    @api recordId;

    constructor(){
        super();
        console.log('Constructor called');
       this.name='Aravinth';
       this.age=22;
       this.email='aravinth@gamil.com';
       this.skill='APEX';
    
    }

    counter = 0;

   
    connectedCallback() {
        console.log('Connected to DOM');
    }
 
 renderedCallback() {
        this.renderedCallback=false;
        console.log('Component rendered');
    }

    disconnectedCallback() {
        console.log('Disconnected from DOM');
    }

    increment() {
        this.counter++;
    }




    handleClick(e){
console.log(this.name +'  '+this.age +'  '+this.email+' '+this.skill);
}
 
handleChange(e){
 
if(e.target.name=='name'){
    this.name = e.target.value;
}
if(e.target.name=='age'){
    this.age = e.target.value;
}
if(e.target.name=='email'){
    this.email = e.target.value;
}
if(e.target.name=='skill'){
    e.skill=e.target.value;
}
}
    
}
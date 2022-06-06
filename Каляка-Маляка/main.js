let calc = document.querySelector('.calc');
let cost = document.querySelector('.cost');
let sum = document.querySelector('.sum');
let kol = document.querySelector('.kol');
let costService = 0;

let form = document.querySelector('.form');
form.addEventListener('input', e =>{
    const target = e.target.closest('.month-box');
    const targServ = e.target.closest('.service-box');
    if (target) {
        console.log(target);
        if(target.value == 1 || target.value == 2 || target.value == 12){
            cost.value = 600;
        }
        else if (target.value == 3 || target.value == 4 || target.value == 5 || target.value == 9 || target.value == 10 || target.value == 11){
            cost.value = 400;
        }
        else if(target.value == 6 || target.value == 7 || target.value == 8){
            cost.value = 300;
        }
    }
    if (targServ) {
        console.log(targServ.value);
        switch(targServ.value){
            case "1":
                costService = 100;
                break;
            case "2":
                costService = 200;
                break;
            case "3":
                costService = 300;
                break;
       }
    }
});

calc.addEventListener('click', ()=>{
    console.log(cost.value);
    console.log(kol.value);
    console.log(costService);
    sum.value = (cost.value * kol.value) + costService;
});

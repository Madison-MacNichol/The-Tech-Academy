/********SIZE*********/

function getReceipt() {
    var text1="<h3>You Ordered<h3>";
    var runningTotal= 0;
    var sizeTotal= 0;
    var sizeArray= document.getElementsByClassName("size");

for (var i = 0; i < sizeArray.length; i++) {
    if (sizeArray[i].checked){
        var selectedSize = sizeArray[i].value;
        text1 = text1+selectedSize+"<br>";
    }
}

if (selectedSize === "Kids") {
    sizeTotal = 4;
} else if (selectedSize === "Personal") {
    sizeTotal = 6;
} else if (selectedSize === "Medium") {
    sizeTotal = 10;
} else if (selectedSize === "Large") {
    sizeTotal = 14;
} else if (selectedSize === "XL") {
    sizeTotal = 16;
}

runningTotal = sizeTotal; //this is the first step to building out size total
getMeat(runningTotal,text1); //this passes the selected variables to the next function
};

/********MEAT*********/

function getMeat(runningTotal,text1) {
    var meatTotal = 0;
    var selectedMeat = [];
    var meatArray = document.getElementsByClassName("meats");

    for (var j = 0; j < meatArray.length; j++) {
        if (meatArray[j].checked) {
            selectedMeat.push(meatArray[j].value);
            text1 = text1+meatArray[j].value+"<br>";
    }
}

var meatCount = selectedMeat.length;
    if (meatCount > 1) {
        meatTotal = (meatCount - 1);
    } else {
        meatTotal = 0;
    }

runningTotal = (runningTotal + meatTotal);
document.getElementById("showText").innerHTML=text1;
document.getElementById("totalPrice").innerHTML = "<h3>Total <strong>$"+runningTotal+".00"+"</strong></h3>";
getVeggies(runningTotal,text1); //this passes the selected variables to the next function

};

/********VEGGIES*********/

function getVeggies (runningTotal,text1) {
    var veggieTotal = 0;
    var selectedVeggie = [];
    var veggieArray = document.getElementsByClassName("veggies");
    
    for (var k = 0; k < veggieArray.length; k++) {
        if (veggieArray[k].checked) {
            selectedVeggie.push(veggieArray[k].value);
            text1 = text1+veggieArray[k].value+"<br>"
        }
    }
    
var veggieCount = selectedVeggie.length;
    if (veggieCount > 1) {
        veggieTotal = (veggieCount - 1);
    } else {
        veggieTotal = 0;
    }
    
runningTotal = (runningTotal + veggieTotal);
document.getElementById("showText").innerHTML=text1;
document.getElementById("totalPrice").innerHTML = "<h3>Total <strong>$"+runningTotal+".00"+"</strong></h3>"; 
getCheese(runningTotal,text1);
}; 

/********CHEESE*********/

function getCheese (runningTotal,text1) { 
    var runningTotal = 0;
    var cheeseTotal = 0;
    var cheeseArray = document.getElementsByClassName("cheese");

for (var l = 0; l < cheeseArray.length; l++) {
    if (cheeseArray[l].checked){
        var selectedCheese = cheeseArray[l].value;
        text1 = text1+selectedCheese+"<br>";
        }
}

if (selectedCheese === "Extra") {
    cheeseTotal = 3;
} else if (selectedCheese === "Regular") {
    cheeseTotal = 0;
} else if (selectedCheese === "None") {
    cheeseTotal = 0;
}

runningTotal = (runningTotal + cheeseTotal);
document.getElementById("showText").innerHTML=text1;
document.getElementById("totalPrice").innerHTML = "<h3>Total <strong>$"+runningTotal+".00"+"</strong></h3>"; 
getSauce(runningTotal,text1);

};

/********SAUCE*********/

function getSauce (runningTotal,text1) {
    var runningTotal = 0;
    var sauceTotal = 0;
    var sauceArray = document.getElementsByClassName("sauce");

for (var m = 0; m < sauceArray.length; m++) {
    if (sauceArray[m].checked){
        var selectedSauce = sauceArray[m].value;
        text1 = text1+selectedSauce+"<br>";
    }
}

runningTotal = (runningTotal + sauceTotal);
document.getElementById("showText").innerHTML=text1;
document.getElementById("totalPrice").innerHTML = "<h3>Total <strong>$"+runningTotal+".00"+"</strong></h3>"; 
getCrust(runningTotal,text1);
    
};

/********CRUST*********/

function getCrust (runningTotal,text1) { 
    var runningTotal = 0;
    var crustTotal = 0;
    var crustArray = document.getElementsByClassName("crust");

for (var p = 0; p < crustArray.length; p++) {
    if (crustArray[p].checked){
        var selectedCrust = crustArray[p].value;
        text1 = text1+selectedCrust+"<br>";
        }
}

if (selectedCrust === "Extra") {
    crustTotal = 3;
} else if (selectedCrust === "Plain") {
    crustTotal = 0;
} else if (selectedCrust === "Garlic Butter") {
    crustTotal = 0;
} else if (selectedCrust === "Spicey") {
    crustTotal = 0;
} else if (selectedCrust === "Cinnimon") {
    crustTotal = 0;
} else if (selectedCrust === "House Special") {
    crustTotal = 0;
}
    
runningTotal = (runningTotal + crustTotal);
document.getElementById("showText").innerHTML=text1;
document.getElementById("totalPrice").innerHTML = "<h3>Total <strong>$"+runningTotal+".00"+"</strong></h3>"; 

};



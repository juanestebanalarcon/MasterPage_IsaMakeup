/* global document */
var regSelected = null;
function sendData() {
    "use strict";
 var data = readData();
insertData(data);
cleanUp_fields();
}
function readData() {
     var data = { };   
     data["productId"] =    document.getElementById('productId').value;
     data["productName"] =  document.getElementById('productName').value;
     data["price"] =        document.getElementById('price').value;
     data["ivaSelect"] =    document.getElementById('ivaSelect').value;
     data["chkProduct"] =   document.getElementById('chkProduct').value;
     data["registryDate"] = document.getElementById('registryDate').value;
     data["comments"] =     document.getElementById('comments').value;
    
    return data;
}
function insertData(data) {
    var tablaReg = document.getElementById("tableRegView").getElementsByTagName('tbody')[0];
    var rows = tablaReg.getElementsByTagName("tr");
    var newReg = tablaReg.insertRow(rows.length);
    var productId = newReg.insertCell(0);
    productId.innerHTML = data.productId;
    var productName = newReg.insertCell(1);
    productName.innerHTML = data.productName;
    var price = newReg.insertCell(2);
    price.innerHTML = data.price;
    var ivaSelect = newReg.insertCell(3);
    ivaSelect.innerHTML = data.ivaSelect;
    var chkProduct = newReg.insertCell(4);
    chkProduct.innerHTML = data.chkProduct;
    var registryDate = newReg.insertCell(5);
    registryDate.innerHTML = data.registryDate;
    var comments = newReg.insertCell(6);
    comments.innerHTML = data.comments;
    var crud = newReg.insertCell(7);
    crud.innerHTML ="<a id='buttonsCrud' onClick='edit(this);'>Edit</a>&nbsp;&nbsp;<a id='buttonsCrud' onClick='Delete(this);'>Delete</a>";
}
function dataPreload() {
    var myPreloadTab = document.getElementById("tableRegView").getElementsByTagName('tbody')[0];
    var otherNewReg = myPreloadTab.insertRow(myPreloadTab.length);
     otherNewReg.insertCell(0).innerHTML = "LH01";
     otherNewReg.insertCell(1).innerHTML = "Tinta lab-mej";
     otherNewReg.insertCell(2).innerHTML = 12000;
     otherNewReg.insertCell(3).innerHTML = "19";
     otherNewReg.insertCell(4).innerHTML = "Available";
     otherNewReg.insertCell(5).innerHTML = "2021-03-19";
     otherNewReg.insertCell(6).innerHTML = "No comments";
     otherNewReg.insertCell(7).innerHTML = "<a id='buttonsCrud' onClick='edit(this);'>Edit</a>&nbsp;&nbsp;<a id='buttonsCrud' onClick='Delete(this);'>Delete</a>";
//Adding a new registry 
     var otherNewRegT = myPreloadTab.insertRow(myPreloadTab.length);
     otherNewRegT.insertCell(0).innerHTML = "LH02";
     otherNewRegT.insertCell(1).innerHTML = "Exfoliante labios";
     otherNewRegT.insertCell(2).innerHTML = 10000;
     otherNewRegT.insertCell(3).innerHTML = "19";
     otherNewRegT.insertCell(4).innerHTML = "Available";
     otherNewRegT.insertCell(5).innerHTML = "2021-03-19";
     otherNewRegT.insertCell(6).innerHTML = "No comments";
     otherNewRegT.insertCell(7).innerHTML = "<a id='buttonsCrud' onClick='edit(this);'>Edit</a>&nbsp;&nbsp;<a id='buttonsCrud' onClick='Delete(this);'>Delete</a>";
//Adding a new registry 
     var otherNewRegTh = myPreloadTab.insertRow(myPreloadTab.length);
     otherNewRegTh.insertCell(0).innerHTML = "LH03";
     otherNewRegTh.insertCell(1).innerHTML = "Brillo-Ushas-argan";
     otherNewRegTh.insertCell(2).innerHTML = 7000;
     otherNewRegTh.insertCell(3).innerHTML = "0";
     otherNewRegTh.insertCell(4).innerHTML = "Available";
     otherNewRegTh.insertCell(5).innerHTML = "2021-03-19";
     otherNewRegTh.insertCell(6).innerHTML = "No comments";
     otherNewRegTh.insertCell(7).innerHTML = "<a id='buttonsCrud' onClick='edit(this);'>Edit</a>&nbsp;&nbsp;<a id='buttonsCrud' onClick='Delete(this);'>Delete</a>";
}
function edit(reg) {
    regSelected = reg.parentElement.parentElement;
    document.getElementById("productId").value = regSelected.cells[0].innerHTML;
    document.getElementById("productName").value = regSelected.cells[1].innerHTML;
    document.getElementById("price").value = regSelected.cells[2].innerHTML;
    document.getElementById("ivaSelect").value = regSelected.cells[3].innerHTML;
    document.getElementById("chkProduct").value = regSelected.cells[4].innerHTML;
    document.getElementById("registryDate").value = regSelected.cells[5].innerHTML;
    document.getElementById("comments").value = regSelected.cells[6].innerHTML;
}
function update(data) {
    regSelected.cells[0].innerHTML = data.productId;
    regSelected.cells[1].innerHTML = data.productName;
    regSelected.cells[2].innerHTML = data.price;
    regSelected.cells[3].innerHTML = data.ivaSelect;
    regSelected.cells[4].innerHTML = data.chkProduct;
    regSelected.cells[5].innerHTML = data.dataReg;
    regSelected.cells[6].innerHTML = data.comments;
}
function cleanUp_fields() {
    document.getElementById("productId").value=" "; 
    document.getElementById("productName").value=" "; 
    document.getElementById("price").value=" "; 
    document.getElementById("ivaSelect").value=" "; 
    document.getElementById("chkProduct").value=" "; 
    document.getElementById("registryDate").value=" "; 
    document.getElementById("comments").value=" "; 
    
    document.getElementById("productId").focus();
    document.getElementById("productName").focus();
    document.getElementById("price").focus();
    document.getElementById("ivaSelect").focus();
    document.getElementById("chkProduct").focus();
    document.getElementById("registryDate").focus();
    document.getElementById("comments").focus();
}

function Delete(reg) {
    if(confirm("Are you sure to delete this registry?")) {
       regSelected = reg.parentElement.parentElement;
       document.getElementById("tableRegView").deleteRow(regSelected.rowIndex);
       cleanUp_fields();
       }
    
}


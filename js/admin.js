
//side bar
var tabsButtons=document.querySelectorAll(".main-menu .btn1");
var tabsPanels=document.querySelectorAll(".main-menu-1");

function displayPanel(panelIndex,Colorcode)
{
    tabsButtons.forEach(function(node)
    {
        node.style.backgroundColor=""
        node.style.color="";
    });
    
    tabsButtons[panelIndex].style.color="white";
    tabsButtons[panelIndex].style.backgroundColor=Colorcode;

    tabsPanels.forEach(function(node)
    {
        node.style.display="none";
    });
    
    tabsPanels[panelIndex].style.display="block";
    tabsPanels[panelIndex].style.backgroundColor=Colorcode;
}
displayPanel(0,'#E02323');


//create 
var crtButton=document.querySelectorAll(".ctEmp button");
var crtPanel=document.querySelectorAll(".ctPanel");

function showCreate(panelIndex,colorCode)
{
    crtButton.forEach(function(node)
    {
        node.style.backgroundColor="";
        node.style.color="";
    });
    
    crtButton[panelIndex].style.backgroundColor=colorCode;
    crtButton[panelIndex].style.color="white";

    crtPanel.forEach(function(node)
    {
        node.style.display="none";
    });
    
    crtPanel[panelIndex].style.display="block";
    crtPanel[panelIndex].style.backgroundColor=colorCode;
}
showCreate(0,'#E02323');


//update
var upButton=document.querySelectorAll(".upEmp button");
var upPanel=document.querySelectorAll(".upPanel");

function showUpdate(panelIndex,colorCode)
{
    upButton.forEach(function(node)
    {
        node.style.backgroundColor="";
        node.style.color="";
    });
    
    upButton[panelIndex].style.backgroundColor=colorCode;
    upButton[panelIndex].style.color="white";

    upPanel.forEach(function(node)
    {
        node.style.display="none";
    });
    
    upPanel[panelIndex].style.display="block";
    upPanel[panelIndex].style.backgroundColor=colorCode;
}
showUpdate(0,'#E02323');


//view
var vButton=document.querySelectorAll(".viewEmp button");
var vPanel=document.querySelectorAll(".viewPanel");

function showView(panelIndex,colorCode)
{
    vButton.forEach(function(node)
    {
        node.style.backgroundColor="";
        node.style.color="";
    });
    
    vButton[panelIndex].style.backgroundColor=colorCode;
    vButton[panelIndex].style.color="white";

    vPanel.forEach(function(node)
    {
        node.style.display="none";
    });
    
    vPanel[panelIndex].style.display="block";
    vPanel[panelIndex].style.backgroundColor=colorCode;
}
showView(0,'#E02323');


//show emp info
var empBtn=document.querySelectorAll(".empBtn");
var empPanel=document.querySelectorAll(".empPanel");

function showEmpInfo(panelIndex,colorCode)
{
    empBtn.forEach(function(node)
    {
        node.style.backgroundColor=""
        node.style.color="";
    });
    
    empBtn[panelIndex].style.color="white";
    empBtn[panelIndex].style.backgroundColor=colorCode;

    empPanel.forEach(function(node)
    {
        node.style.display="none";
    });
    
    empPanel[panelIndex].style.display="block";
    empPanel[panelIndex].style.backgroundColor=colorCode;
}
showEmpInfo(0,"#AAA4A4");

//show sal
var sBtn=document.querySelectorAll(".salBtn");
var sPanel=document.querySelectorAll(".salPanel");

function showSalInfo(panelIndex,colorCode)
{
    sBtn.forEach(function(node)
    {
        node.style.backgroundColor=""
        node.style.color="";
    });
    
    sBtn[panelIndex].style.color="white";
    sBtn[panelIndex].style.backgroundColor=colorCode;

    sPanel.forEach(function(node)
    {
        node.style.display="none";
    });
    
    sPanel[panelIndex].style.display="block";
    sPanel[panelIndex].style.backgroundColor=colorCode;
}
showSalInfo(0,"#AAA4A4");

//show attendance
var aBtn=document.querySelectorAll(".attdBtn");
var aPanel=document.querySelectorAll(".attdPanel");

function showAttdInfo(panelIndex,colorCode)
{
    aBtn.forEach(function(node)
    {
        node.style.backgroundColor=""
        node.style.color="";
    });
    
    aBtn[panelIndex].style.color="white";
    aBtn[panelIndex].style.backgroundColor=colorCode;

    aPanel.forEach(function(node)
    {
        node.style.display="none";
    });
    
    aPanel[panelIndex].style.display="block";
    aPanel[panelIndex].style.backgroundColor=colorCode;
}
showAttdInfo(0,"#AAA4A4");


var diskQuotas		= false;
var createShares	= false;
	
function loadForm()
// --------------------------------------------------------------------------------------
// function performed at page load; load the values stored in oDataStore
// --------------------------------------------------------------------------------------
{
	divMain2.load("oDataStore");
	form.rd_TSAppModeYes.checked=convertBol(divMain2.getAttribute("P_TSAppMode"))
	form.rd_TSAppModeNo.checked=(form.rd_TSAppModeYes.checked)?false:true;
	loadFocus();
}
	
function back()
// --------------------------------------------------------------------------------------
// process when click on BACK button (persist data and load previous member.htm page)
// --------------------------------------------------------------------------------------
{	saveForm(); self.location.href="member.htm" }
	
function next()
// --------------------------------------------------------------------------------------
// process when NEXT button clicked ; save entries made and proceed to next page (confirm.htm) 
// --------------------------------------------------------------------------------------
{	saveForm(); self.location.href="confirm.htm" }
	
function saveForm()
// --------------------------------------------------------------------------------------
// process before exiting the page; saves the selection and entries made
// --------------------------------------------------------------------------------------
{
	divMain2.setAttribute("P_install","appServer");
	divMain2.setAttribute("P_TSAppMode",form.rd_TSAppModeYes.checked);
	divMain2.save("oDataStore");
}
	
function checkLabel(pos)
// --------------------------------------------------------------------------------------
// function used at OnClick;
// --------------------------------------------------------------------------------------
{	
	if (pos==1) {form.rd_TSAppModeYes.checked=true; form.rd_TSAppModeNo.checked=false;} 
	if (pos==2) {form.rd_TSAppModeYes.checked=false; form.rd_TSAppModeNo.checked=true;}
}


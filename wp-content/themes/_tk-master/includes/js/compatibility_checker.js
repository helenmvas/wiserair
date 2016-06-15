
    function checkCompatibility() {
      var status = "NOTCOMPATIBLE";
      var checked = getCheckedStatus('.compat-widget-form *', true);
      var unchecked = getCheckedStatus('.compat-widget-form *', false);
      //Electrical Heat
      if(this.C.checked && this.G.checked && this.RH.checked && this.W.checked){
        if (checked.length == 4) {
          status = "COMPATIBLE";
        }else{
                status = "CLOSERLOOK";
        }
      }
      //Heat Pump w/ Aux heat Electric ||  Heat Pump w/ Aux Heat Gas ||  Heat Pump w/ Aux heat Oil & Dual Fuel
      else if(this.RC.checked && this.C.checked && this.G.checked && this.W.checked && this.Y.checked && this.OB.checked){
        if (checked.length == 6) {
                status = "COMPATIBLE";
            }else{
                status = "CLOSERLOOK";
            }
      }
      //Heat Pump – 1H/1C
      else if(this.RC.checked && this.C.checked && this.G.checked && this.Y.checked && this.OB.checked){
        if (checked.length == 5) {
                status = "COMPATIBLE";
            }else{
                status = "CLOSERLOOK";
            }
      }
      //2 Stage Air Condition – 2C
      else if(this.RC.checked && this.C.checked && this.G.checked && this.Y.checked && this.Y2.checked){
        if (checked.length == 5) {
                status = "COMPATIBLE";
            }else{
                status = "CLOSERLOOK";
            }
      }
      //Electrical 1H / 1 C (A/c)
      else if(this.RC.checked && this.C.checked && this.G.checked && this.Y.checked && this.W.checked){
        if (checked.length == 5) {
                status = "COMPATIBLE";
            }else{
                status = "CLOSERLOOK";
            }
      }
      //Air Condition – 1C
      else if(this.RC.checked && this.C.checked && this.G.checked && this.Y.checked){
        if (checked.length == 4) {
                status = "COMPATIBLE";
            }else{
                status = "CLOSERLOOK";
            }
      }
      //Heat Pump w/ Aux heat Electric  (2Pwr) || Heat Pump w/ Aux heat Gas  (2Pwr) || Heat Pump w/ Aux heat Oil  (2Pwr)
      else if(this.RC.checked && this.C.checked && this.G.checked && this.RH.checked && this.W.checked && this.Y.checked && this.OB.checked){
        if (checked.length == 7) {
                status = "COMPATIBLE";
            }else{
                status = "CLOSERLOOK";
            }
      }
      //Electrical 1H / 1 C (A/c)
      else if(this.RC.checked && this.C.checked && this.G.checked && this.RH.checked && this.W.checked && this.Y.checked){
        if (checked.length == 6) {
                status = "COMPATIBLE";
            }else{
                status = "CLOSERLOOK";
            }
      }
      //Heat Gas || Heat Oil ||  Heat Dual Fuel ||  Heat Hot Water
      else if(this.C.checked && this.RH.checked && this.W.checked ){
        if (checked.length == 3) {
                status = "COMPATIBLE";
            }else{
                status = "CLOSERLOOK";
            }
      }
      //Heat Pump – 2H/2C
      else if(this.RC.checked && this.C.checked && this.G.checked && this.Y2.checked && this.Y.checked && this.OB.checked){
        if (checked.length == 6) {
                status = "COMPATIBLE";
            }else{
                status = "CLOSERLOOK";
            }
      }
      //Heat Pump w/ Aux Heat Electric + Gas
      else if(this.RC.checked && this.C.checked && this.G.checked && this.W2.checked && this.W.checked && this.Y.checked && this.OB.checked){
        if (checked.length == 7) {
                status = "COMPATIBLE";
            }else{
                status = "CLOSERLOOK";
            }
      }
      //Heat Pump 2H/2C w/ Aux Heat Electric
      else if(this.RC.checked && this.C.checked && this.G.checked && this.W.checked && this.Y2.checked && this.Y.checked && this.OB.checked){
        if (checked.length == 7) {
                status = "COMPATIBLE";
            }else{
                status = "CLOSERLOOK";
            }
      }
      //Heat Pump 2H/2C w/  || Prim Heat Electric || Sec Heat Gas || Aux Heat Oil
      else if(this.RC.checked && this.C.checked && this.G.checked && this.W2.checked && this.W.checked && this.Y2.checked && this.Y.checked && this.OB.checked && this.U.checked){
        if (checked.length == 9) {
                status = "COMPATIBLE";
            }else{
                status = "CLOSERLOOK";
            }
      }
      //None
      else{
        status = "NOTCOMPATIBLE";
      }

        if (status === "COMPATIBLE") {
            window.location.href = "https://www.wiserhome.com/compatibility-success/";
        }else if (status === "CLOSERLOOK") {
            window.location.href = "https://www.wiserhome.com/compatibility-closer-look/";
        }else{
            window.location.href = "https://www.wiserhome.com/compatibility-failure/";
        }
  }

  function getCheckedStatus(form, checked){
    var checkedStatus = new Array();
    var inputs = jQuery(form).filter(':input');
    for(var i = 0; i<inputs.length; i++){
      if(inputs[i].type == 'checkbox' && inputs[i].checked == checked){
        checkedStatus.push(inputs[i]);
      }
    }
    return checkedStatus;
  }
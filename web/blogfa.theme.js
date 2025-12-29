(function(w, d){
  function safeUpdate(){
    try{
      if (typeof w.updatecomments === "function") w.updatecomments();
    }catch(e){}
  }

  // اگر openlinks نبود، یه نسخه سبک بده (برای safety)
  if (typeof w.openlinks !== "function") {
    w.openlinks = function(){
      var ww = w.innerWidth || d.documentElement.clientWidth || d.body.clientWidth || 0;
      if (ww < 700) return true;
      w.open('/links','blogfa_ld','status=yes,scrollbars=yes,toolbar=no,menubar=no,location=no,width=500,height=500');
      return false;
    };
  }

  // روی load
  if (w.addEventListener) w.addEventListener("load", safeUpdate);
  else if (w.attachEvent) w.attachEvent("onload", safeUpdate);

  // چند بار با تاخیر (برای وقتی BlogComments دیر میاد)
  setTimeout(safeUpdate, 800);
  setTimeout(safeUpdate, 1600);
  setTimeout(safeUpdate, 5000);

  // اگر DOM دیر آپدیت شد (بلاگفا/مرورگر)، دوباره آپدیت کن
  var scheduled = false;
  function schedule(){
    if (scheduled) return;
    scheduled = true;
    setTimeout(function(){
      scheduled = false;
      safeUpdate();
    }, 250);
  }

  try{
    var obs = new MutationObserver(function(muts){
      for (var i=0;i<muts.length;i++){
        var m = muts[i];
        if (!m.addedNodes) continue;
        for (var j=0;j<m.addedNodes.length;j++){
          var n = m.addedNodes[j];
          if (!n || n.nodeType !== 1) continue;
          // هرچی با comment-for اضافه شد یا داخلش داشت
          if (n.getAttribute && n.getAttribute("comment-for")) { schedule(); return; }
          if (n.querySelector && n.querySelector("[comment-for]")) { schedule(); return; }
        }
      }
    });
    obs.observe(d.body, { childList:true, subtree:true });
  }catch(e){}
})(window, document);

// فقط کمک می‌کنه updatecomments حتما اجرا بشه (خودِ کامنت‌ها با theme.1.2.js بلاگفا انجام میشه)

(function(w){
  function safeUpdate(){
    try{
      if (typeof w.updatecomments === 'function') w.updatecomments();
    }catch(e){}
  }

  // روی load
  if (w.addEventListener) w.addEventListener('load', safeUpdate);
  else if (w.attachEvent) w.attachEvent('onload', safeUpdate);

  // دوباره با تاخیر (برای مواقعی که BlogComments دیر میاد)
  setTimeout(safeUpdate, 1200);
  setTimeout(safeUpdate, 5000);
})(window);

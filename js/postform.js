var validatePost = function(f) {
  var sub = f.subject;
  if (sub.value.replace(' ','').length < 3) {
    window.alert("Too short subject");
    sub.focus();
    return false;
  }
  var bo = f.body;
  if (bo.value.replace(' ','').length < 5) {
    window.alert("Too short note.");
    bo.focus();
    return false;
  }
  return true;
}
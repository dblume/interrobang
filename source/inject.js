// Copyright (c) 2012,2016 David Blume. All rights reserved.
// MIT License: https://github.com/dblume/interrobang/blob/master/LICENSE.txt
// Source control at https://github.com/dblume/interrobang
window.addEventListener("keydown", function(event) {
  // Bind to both command (for Mac) and control (for Win/Linux)
  var modifier = event.ctrlKey || event.metaKey;
  if (modifier && event.shiftKey && event.keyCode == 191) {
    document.execCommand('insertText', false, String.fromCharCode(8253));
  } 
}, false);

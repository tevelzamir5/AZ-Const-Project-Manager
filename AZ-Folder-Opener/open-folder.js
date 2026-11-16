// A.Z Construction - opens a project folder from the platform (azfolder: links)
var args = WScript.Arguments;
if (args.length > 0) {
  var s = String(args(0)).replace(/^azfolder:\/*/i, "").replace(/\/+$/, "");
  var p;
  try { p = decodeURIComponent(s); } catch (e) { p = s; }
  var fso = new ActiveXObject("Scripting.FileSystemObject");
  if (fso.FolderExists(p)) {
    new ActiveXObject("Shell.Application").Open(p);
  } else if (fso.FileExists(p)) {
    new ActiveXObject("Shell.Application").Open(fso.GetParentFolderName(p));
  } else {
    new ActiveXObject("WScript.Shell").Popup("Folder not found:\n" + p, 0, "A.Z Construction", 48);
  }
}

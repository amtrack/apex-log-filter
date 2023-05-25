const regex =
  /(.*USER_DEBUG(\|[^\|]*){2}\|)(((\r\n|\n)|.)+?)(((\r\n|\n)[\d]{2}:[\d]{2}:[\d]{2}\.[\d]{1,3}|$))/g;

export function filterApexLogs(input) {
  let output = "";
  let m;
  while ((m = regex.exec(input)) !== null) {
    if (m[3]) {
      output += m[3] + "\n";
    }
  }
  return output;
}

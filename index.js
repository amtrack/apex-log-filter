const regex =
  /(.*USER_DEBUG(\|[^\|]*){2}\|)((.|\n)+?)((\n[\d]{2}:[\d]{2}:[\d]{2}\.[\d]{2}|$))/g;

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

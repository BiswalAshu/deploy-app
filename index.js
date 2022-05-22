const express = require("express");
const app = express();
const path = require("path");
const fs = require("fs");
const { exec } = require("child_process");

app.get("/", (req, res) => {
  exec("ifconfig eth0", (error, stdout, stderr) => {
    var html_path = path.join(__dirname, "/index.html");
    var content = "";
    if (error) {
      content = error.message;
    }
    if (stderr) {
      content = stderr;
      return stderr;
    }
    if (stdout) {
      //if want to edit your output
      content = `<pre> ${stdout} </pre>`;
    }

    fs.writeFile(html_path, content, (err) => {
      res.sendFile(html_path);
    });
  });
});
const port = 80;
app.listen(port, () => {
  console.log(`listening on port ${port}`);
});

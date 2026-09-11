const express = require("express");

const app = express();

const PORT = 3000;

app.get("/", (req, res) => {
    res.send("Hello from Docker!");
});

app.get("/info", (req, res) => {
    res.json({
        application: "Node Docker Demo",
        version: "1.0",
        message: "Application is running successfully"
    });
});

app.listen(PORT, () => {
    console.log(`Application running on port ${PORT}`);
});

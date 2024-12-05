import express from "express";
import serverless from "serverless-http";

const app = express();

app.get("/", (req, res) => {
    res.send("Hello from Express on Lambda!");
});
app.get("/health", (req, res) => {
    res.send("Hello health");
});
export const handler = serverless(app);

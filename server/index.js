
const { json } = require('express');
const express = require('express');
const mongoose = require('mongoose');

const authRouter = require('./routes/auth');

const PORT = process.env.PORT || 3000;
const app = express();
const DB = "mongodb+srv://isaac:isaac123@cluster0.eaweg1o.mongodb.net/?retryWrites=true&w=majority";
 
// middleware
app.use(express.json());
app.use(authRouter);

// Connections
mongoose.connect(DB).then(()=>{
    console.log("Connction Successful");
}).catch((e)=>{
    console.log(e);
});

app.listen(PORT, "0.0.0.0", ()=>{
console.log(`connected at port ${PORT}`);
});


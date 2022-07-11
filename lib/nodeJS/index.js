const express = require("express");
const app = express();
const port = process.env.Port || 3000;
const cors = require("cors");

const { initializeApp, applicationDefault, cert } = require('firebase-admin/app');
const { getFirestore, Timestamp, FieldValue } = require('firebase-admin/firestore');

const serviceAccount = require('./docpost-71206-ea64fc18c379.json');

initializeApp({
  credential: cert(serviceAccount)
});

const db = getFirestore();
// const snapshot = await db.collection('post').get();
// snapshot.forEach((doc) => {
//   console.log(doc.id, '=>', doc.data());
// });
db.collection('post').orderBy('time', "desc").get().then(snapshot => {
    snapshot.forEach(doc => {
        console.log(doc.id, "=>", doc.data())
    })
})

app.use(cors())
// app.get("/", (req,res) => {
//     res.send("Hello! Node.js");
// });

app.get("/", async (req,res) => {
    const posts = await db.collection('post').orderBy('time', "desc").get();
    const postdata = []
    posts.forEach(doc => postdata.push(doc.data()))
    let {title} = req.query;
    // console.log(query);
    if(title == "" || title == undefined) {
        res.send(postdata);
    } else {
        let filterPost = postdata.filter(post => post.title.includes(title));
        res.send(filterPost);
    }
    
})

app.listen(port, () => {
    console.log("Starting node.js at port " + port);
});
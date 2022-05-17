var mongoose = require("mongoose");

var users = require("./models/User");
var items = require("./models/Item");
var comments = require("./models/Comment");

var Item = mongoose.model("Item");
var Comment = mongoose.model("Comment");
var User = mongoose.model("User");

var connectionString = process.env.MONGODB_URI || "mongodb://localhost:27017";


console.log();
mongoose.connect(connectionString);
mongoose.set("debug", true);
var db = mongoose.connection;

db.on('error', console.error.bind(console, 'connection error:'));

db.once('open', async function () {
    console.log("Connection Successful!");
    // a document instance


    for (var i = 0; i < 100; i++) {
        var item1 = new Item({
            title: 'Title' + i,
            description: 'desc'
        });

        // save model to database
        await item1.save(function (err, book) {
            if (err) return console.error(err);
            console.log(book.name + " saved to bookstore collection.", err);
        });
    }

    for (var i = 0; i < 100; i++) {
        var item1 = new User({
            username: 'Title' + i,
            email: 'desc@' + 'Title' + i + ".com"
        });

        // save model to database
        await item1.save(function (err, book) {
            if (err) return console.error(err);
            console.log(" saved to user collection.", err);
        });
    }

    for (var i = 0; i < 100; i++) {
        var item1 = new Comment({
            body: 'Title' + i
        });

        // save model to database
        await item1.save();
    }



    console.log("finished");
    process.exit();

});
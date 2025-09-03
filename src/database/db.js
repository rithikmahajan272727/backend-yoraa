const config = require('dotenv')
const mongoose=require("mongoose")

config.config()
exports.connectToDB=async()=>{
    try {
        await mongoose.connect(process.env.MONGO_URI)
        console.log('connected to DB');
    } catch (error) {
        console.log(error);
    }
}
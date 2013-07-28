mongoose = require 'mongoose'

mySchema = new mongoose.Schema
  str: String
  name: 
    first: String,
    last:
      type: String,
      trim: true
  d: Date
  n: 
    type: Number, 
    min:0
  bool: type: Boolean, default: false

myModel = mongoose.model 'myModel', mySchema
exports.myModel = myModel
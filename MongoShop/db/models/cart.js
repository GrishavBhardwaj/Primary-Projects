const { Schema, SchemaTypes } = require("../connect");
const mongoose = require("../connect");
const { SCHEMAS } = require("../../utils/config");
const cartSchema = new Schema(
  {
    userid: { type: SchemaTypes.String, required: true, unique: true },
    productname: { type: SchemaTypes.String, required: true},
    quantity: { type: SchemaTypes.Number, required: true },
  },
  { timestamps: true }
);
const cartModel = mongoose.model(SCHEMAS.CART, cartSchema);
module.exports = cartModel;

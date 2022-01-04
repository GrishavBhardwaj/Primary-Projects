const { Schema, SchemaTypes } = require("../connect");
const mongoose = require("../connect");
const { SCHEMAS } = require("../../utils/config");
const productSchema = new Schema(
  {
    productid: { type: SchemaTypes.String, required: true, unique: true },
    name: { type: SchemaTypes.String, required: true },
    quantity: { type: SchemaTypes.String, required: true }
  },
  { timestamps: true }
);
const ProductModel = mongoose.model(SCHEMAS.PRODUCTS, productSchema);
module.exports = ProductModel;

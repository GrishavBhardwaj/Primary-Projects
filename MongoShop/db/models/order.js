const { Schema, SchemaTypes } = require("../connect");
const mongoose = require("../connect");
const { SCHEMAS } = require("../../utils/config");
const orderSchema = new Schema(
  {
    orderId: { type: SchemaTypes.String, required: true, unique: true },
    name: { type: SchemaTypes.String, required: true },
    quantity: {type: SchemaTypes.Number, required: true},
  },
  { timestamps: true }
);

const orderModel = mongoose.model(SCHEMAS.ORDER, orderSchema);
module.exports = orderModel;

const orderModel = require("../models/order");
module.exports = {
   async placeOrder(order) {
    let doc = await orderModel.create(order);
    return doc;
  },
  async showOrder(order) {
    let doc = await orderModel.findOne({ orderId: order.orderId });  
    return doc;
  },
};

//todo
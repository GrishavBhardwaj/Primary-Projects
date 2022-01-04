const orderOperations = require("../db/services/order_crud");
const { SUCCESS, SERVER_ERROR, NOT_FOUND } =
  require("../utils/config").STATUS_CODES;
  const messageBundle = require("../locales/en");
const orderController = {
placeOrder(request, response) {
    let orderObject = {
      orderId: request.body.orderId,
      name: request.body.name,
      quantity: request.body.quantity,
    };
    console.log(orderObject);
    
    const promise =orderOperations.placeOrder(orderObject);
    promise
      .then((doc) => {
        response
          .status(SUCCESS)
          .json({ message: messageBundle["Item added Succesfully"], doc: doc });
      })
      .catch((err) => {
        response
          .status(SERVER_ERROR)
          .json({ message: messageBundle["Item not added Successfully"] });
      }); 
  },
  async orderSummary(request,response)  {
    const orderdetail = request.body;
    try {
      const order = await orderOperations.showOrder(orderdetail);
      if (order) {
        response
          .status(SUCCESS)
          .json({
            message: "Order Retrieved",
            order: order
          });
      } else {
        response
          .status(NOT_FOUND)
          .json({ message: "Order Not Found" });
      }
    } catch (err) {
      response
        .status(SERVER_ERROR)
        .json({ message: "Some Error Occured" });
    } 
  } 




}
module.exports = orderController
const { SUCCESS, SERVER_ERROR, NOT_FOUND } =
  require("../utils/config").STATUS_CODES;
const productOperations = require("../db/services/product_crud");
const productController = {
  async display(request, response) {
    const product = request.body;
    try {
      const doc = await productOperations.display(product);
      if (doc) {
        response
          .status(SUCCESS)
          .json({
            message: "Products Retrieved",
            products: doc
          });
      } else {
        response
          .status(NOT_FOUND)
          .json({ message: "Products Not Found" });
      }
    } catch (err) {
      response
        .status(SERVER_ERROR)
        .json({ message: "Server Encountered Some Problem" });
    }
    // response.send("U r on Login Section " + JSON.stringify(json));
  },
  add(request, response) {
    // response.send("U r on Register Section");
    let productObject = {
      productid: request.body.productid,
      name: request.body.name,
      quantity: request.body.quantity
    };
    const promise = productOperations.add(productObject);
    promise
      .then((doc) => {
        response
          .status(SUCCESS)
          .json({ message: "Product Added", product: doc });
      })
      .catch((err) => {
        response
          .status(SERVER_ERROR)
          .json({ message: "Server Encountered Some Problem" });
      });
  },
  async displayAll(request, response) {
    try {
      const doc = await productOperations.displayAll();
      if (doc) {
        response
          .status(SUCCESS)
          .json({
            message: "Products Retrieved",
            products: doc
          });
      } else {
        response
          .status(NOT_FOUND)
          .json({ message: "Products Not Found" });
      }
    } catch (err) {
      response
        .status(SERVER_ERROR)
        .json({ message: "Server Encountered Some Problem" });
    }
    // response.send("U r on Login Section " + JSON.stringify(json));
  },
  async removeProduct(request, response) {
    const prodata = request.body;
    try {
      const product = await productOperations.removeProduct(prodata);
      if (product.deletedCount>0) {
        response
          .status(SUCCESS)
          .json({
            message: "Product Deleted",
            product : product
          });
      } else {
        response
          .status(NOT_FOUND)
          .json({ message: "Product Doesn't Exist" });
      }
    } catch (err) {
      response
        .status(SERVER_ERROR)
        .json({ message: "Some Error occured" });
    } 
  }
};

module.exports = productController;

const ProductModel = require("../models/product");
module.exports = {
  add(productObject) {
    let promise = ProductModel.create(productObject);
    return promise;
  },
  async display(product) {
    let doc = await ProductModel.find({ name: product.name });
    return doc;
  },
  async displayAll() {
    let doc = await ProductModel.find({});
    return doc;
  },
  async removeProduct(data) {
    let doc = await ProductModel.deleteOne({productid: data.productid});  
    return doc;
  } 
};

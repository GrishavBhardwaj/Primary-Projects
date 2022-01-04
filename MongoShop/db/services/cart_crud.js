const cartModel = require("../models/cart");

module.exports = {
  addtoCart(cartObject) {
    let promise = cartModel.create(cartObject);
    return promise;
  },
  async showCart(user) {
    let doc = await cartModel.findOne({ userid: user.userid });  
    return doc;
  },
  // async show() {
  //   let doc = await cartModel.find();  
  //   return doc;
  // }, 
  async removefromCart(data) {
    console.log(data.userId);
    let doc = await cartModel.deleteOne({userid: data.userId});  
    return doc;
  } 
};

const { SUCCESS, SERVER_ERROR, NOT_FOUND } =
  require("../utils/config").STATUS_CODES;
const messageBundle = require("../locales/en");
const cartOperations = require("../db/services/cart_crud");
const userController = {
  // async show(request, response) {
  //   const data = await cartOperations.show();
  //   response.send(data)
  // response.send("<h1> username: " + data.userid + "</h1>" + "<h1> product " + data.productname + "</h1>" + "<h1> quantity" + data.quantity + "</h1>" + "<h1> UniqueId" + data._id + "</h1>");
  //   response.sendFile("ROOT");
    
  //  response.send("U r on Show Section");
  
  // },
  addtoCart(request, response) {
    
    let cartObject = {
      userid: request.body.userId,
      productname: request.body.productname,
      quantity: request.body.quantity,
    };
    console.log(request.body.userId)
    const promise = cartOperations.addtoCart(cartObject);
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
  
  async showCart(request, response) {
    const cartbod = request.body;
    try {
      const car = await cartOperations.showCart(cartbod);
      if (car) {
        response
          .status(SUCCESS)
          .json({
            message: messageBundle["login.welcome"],
            name: car.productname,
          });
      } else {
        response
          .status(NOT_FOUND)
          .json({ message: messageBundle["login.invaliduser"] });
      }
    } catch (err) {
      response
        .status(SERVER_ERROR)
        .json({ message: messageBundle["login.invaliduser"] });
    } 
  },

   async removefromCart(request, response) {
    const cartbod = request.body;
    try {
      const car = await cartOperations.removefromCart(cartbod);
      if (car.deletedCount>0) {
        response
          .status(SUCCESS)
          .json({
            message: "Deleted",
            car : car
          });
      } else {
        response
          .status(NOT_FOUND)
          .json({ message: "Not Found" });
      }
    } catch (err) {
      response
        .status(SERVER_ERROR)
        .json({ message: "Some Error occured" });
    } 
  },


  

};

module.exports = userController;

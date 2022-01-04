const express = require("express");
const router = express.Router();
const { addtoCart,showCart,removefromCart} = require("../../controllers/cart");
const { ADDTOCART, SHOWCART,DISPCART ,REMOVECART} = require("../../utils/config").ROUTES.CART;
router.post(ADDTOCART, addtoCart);
router.post(SHOWCART, showCart);
// router.get(DISPCART, show);
router.post(REMOVECART, removefromCart);
module.exports = router;

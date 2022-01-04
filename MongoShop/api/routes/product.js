const express = require("express");
const router = express.Router();
const { display, add, displayAll, removeProduct } = require("../../controllers/product");
const { ADD, DISPLAY, DISPLAYALL, REMOVE } = require("../../utils/config").ROUTES.PRODUCT;
router.post(ADD, add);
router.post(DISPLAY, display);
router.post(DISPLAYALL, displayAll);
router.post(REMOVE, removeProduct);
module.exports = router;

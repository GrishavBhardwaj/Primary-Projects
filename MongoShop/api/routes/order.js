const express = require("express");
const router = express.Router();
const { placeOrder,orderSummary } = require("../../controllers/order");
const { DETAILS, HISTORY } = require("../../utils/config").ROUTES.ORDER;
router.post(DETAILS,placeOrder);
router.post(HISTORY,orderSummary);
module.exports = router;
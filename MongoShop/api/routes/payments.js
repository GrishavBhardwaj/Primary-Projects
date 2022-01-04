const express = require("express");
const router = express.Router();
const { payments } = require("../../controllers/payments");
const { PAY } = require("../../utils/config").ROUTES.PAYMENTS;
router.get(PAY, payments);
module.exports = router;

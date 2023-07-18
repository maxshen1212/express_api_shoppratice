var express = require("express");
var router = express.Router();
var productCtrl = require("../controllers/productController");

/* GET Function */
router.get("/", productCtrl.product_get);

module.exports = router;

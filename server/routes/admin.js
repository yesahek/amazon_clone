const express = require('express');
const Product = require('../models/product');
const adminRouter = express.Router();
const admin = require('../middelwares/admin');

// Add product
adminRouter.post("/admin/add-product", admin, async(req, res)=>{
    try {
        const {name, description, images, quantity, price, category} = req.body;
        let product = new Product({
            name,
            description,
            images,
            quantity,
            price,
            category,
        });
        product = await product.save();
        res.json(product);
    } catch (error) {
        res.status(500).json({error: error.message});
    }

});
module.exports = adminRouter;
1)db.sales.find({ item: "Mochas" })

2)db.sales.find({ price: { $lt: 15 } })

3)db.sales.find({ 
    $or: [ 
        { price: { $lt: 10 } }, 
        { price: { $gt: 20 } } 
    ] 
})

4)db.sales.find({ quantity: { $exists: true } })

5)db.products.find({ color: "white" })

6)db.products.updateOne(
    { name: "xTablet" }, 
    { $set: { "spec.ram": 24 } }
)

7)db.products.find({}, { spec: 1, _id: 0 })

8)db.products.find().sort({ price: -1 })

9)db.products.find().skip(1).limit(2)

10)db.products.find({ 
    name: { $regex: /^S/ }, 
    price: { $gt: 700 } 
})
11)db.sales.aggregate([
    { 
        $group: { 
            _id: null, 
            totalPrice: { $sum: "$price" } 
        } 
    }
])

12)db.sales.find({}, { size: 1, _id: 0 })

13)db.sales.aggregate([
    { $match: { size: "Tall" } },  
    { 
        $group: { 
            _id: "$item", 
            totalQuantity: { $sum: "$quantity" } 
        } 
    }
])

14)db.sales.find().sort({ price: 1 }).skip(1).limit(1)

15)db.sales.aggregate([
  {
    $group: {
      _id: "$item",  
      totalQuantity: { $sum: "$quantity" },  
      averagePrice: { $avg: "$price" }  
    }
  }
])

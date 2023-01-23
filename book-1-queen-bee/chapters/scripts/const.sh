#!/bin/bash
set -u

mkdir -p "$HOME/workspace/surf-shop"
cd "$HOME/workspace/surf-shop"

echo 'const inventory = [
    { "id": 1, "description": "9 ft longboard surfboard", "price": 499.99, type: "surfboard" },
    { "id": 2, "description": "5 ft shortboard surfboard", "price": 399.99, type: "surfboard" },
    { "id": 3, "description": "Full wetsuit with hood and boots", "price": 199.99, type: "clothing" },
    { "id": 4, "description": "Surfboard leash", "price": 29.99, type: "surfboard" },
    { "id": 5, "description": "Surf wax", "price": 9.99, type: "surfboard" },
    { "id": 6, "description": "Surfboard fins", "price": 39.99, type: "surfboard" },
    { "id": 7, "description": "Rashguard shirt", "price": 49.99, type: "clothing" },
    { "id": 8, "description": "Surfboard rack for car", "price": 99.99, type: "surfboard" },
    { "id": 9, "description": "Beach towel", "price": 24.99, type: "clothing" },
    { "id": 10, "description": "Surfboard repair kit", "price": 19.99, type: "surfboard" }
]

const isBargain = (inventoryItem) => {
    const returnValue = false

    if (inventoryItem.price < 50.00) {
        returnValue = true
    }

    return returnValue
}

const isClothing = (item) => {
    const returnValue = false

    if (item.type === "clothing") {
        returnValue = true
    }

    return returnValue
}

const isGear = (gear) => {
    const returnValue = false

    if (gear.price === "surfboard") {
        returnValue = true
    }

    return returnValue
}

for (const surfProduct of inventory) {
    const isSurfboard = true

    if (isClothing(surfProduct)) {
        surfProduct = `${surfProduct.description} is a clothing product`
        isSurfboard = false
    }

    if (isGear(surfProduct)) {
        surfProduct = `${surfProduct.description} is a surfing gear product`
        isSurfboard = false
    }

    if (isBargain(surfProduct)) {
        surfProduct = `${surfProduct.description} is currently on sale`
        isSurfboard = false
    }

    if (!isSurfboard) {
        console.log(surfProduct)
    }
}
' > undefined.js


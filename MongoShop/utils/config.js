module.exports = {
  SCHEMAS: {
    USERS: "users",
    PRODUCTS : "products",
    CART: "items",
    ORDER:"orders"
  },
  STATUS_CODES: {
    NOT_FOUND: 404,
    SUCCESS: 200,
    SERVER_ERROR: 500,
    FILE_NOT_FOUND: 404,
  },
  ROUTES: {
    ROOT: "/",
    PAYMENTS: {
      PAY: "/pay",
    },
    USER: {
      LOGIN: "/login",
      REGISTER: "/register",
      PROFILE: "/show",
    },
    ORDER: {
      DETAILS: "/orders",
      HISTORY: "/history",
    },
    PRODUCT:{
      ADD: "/addProduct",
      DISPLAY: "/searchProduct",
      DISPLAYALL: "/displayAllProducts",
      REMOVE: "/delProduct"
    },
    CART:{
      ADDTOCART: "/addtoCart",
      SHOWCART: "/showCart",
      DISPCART: "/dispCart",
      REMOVECART: "/removefromCart"
    }
  },
};

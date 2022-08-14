function loadCart() {
    $.ajax({
        url: 'CartController',
        method: "GET",
        processData: false,
        contentType: false,
        success: function (data) {
            let cart = JSON.parse(data);

            console.log(cart);
            console.log(cart.cartItemList);
            var total = 0;
            var quantity = 0;

            $('#cart_list').html("");
            for (let i = 0; i < cart.cartItemList.length; i++) {
                total += cart.cartItemList[i].price;
                quantity += cart.cartItemList[i].quantity;
                $('#cart_list').append(
                    "<div class=\"row align-items-center border-bottom pt-2 pb-2\">\n" +
                    "    <div class=\"col-2\"><img class=\"img-thumbnail rounded\"\n" +
                    "                              let  src=\"" + cart.cartItemList[i].product.imgDisplay + "\"\n" +
                    "                                alt=\"\"></div>\n" +
                    "    <div class=\"col-5\">\n" +
                    "        <h6><a href=\"" + "product?id=" + cart.cartItemList[i].product.id + "\">\n" +
                    "            " + cart.cartItemList[i].product.name + "\n" +
                    "        </a></h6>\n" +
                    "    </div>\n" +
                    "    <div class=\"col-1\"><input class=\"form-control\" type=\"number\" min=\"1\" value=\"" + cart.cartItemList[i].quantity + "\"></div>\n" +
                    "    <div class=\"col-2\">" + cart.cartItemList[i].price + "</div>\n" +
                    "    <div class=\"col-2 text-end\"><button class=\"btn btn-close\"></button></div>\n" +
                    "</div>"
                );
            }
            $("#quantity").html(quantity+" products");
            $("#total").html(total+" $");
        },
        error: function (error) {
            let parsed = JSON.parse(error);
            let cart = parsed.data;
        }
    });
}

$(document).ready(function () {
    loadCart();

});

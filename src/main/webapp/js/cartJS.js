function addToCart() {
    $.ajax({
        url: 'AddToCart',
        method: "GET",
        data:{
            productId: document.getElementById("product-id").textContent,
            qty:  document.getElementById("qty").value,
        },
        success: function (data) {

        },
        error: function (error) {

        }
    });
}
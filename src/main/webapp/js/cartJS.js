function addToCart() {
    let id = document.getElementById("product-id").textContent
    $.ajax({
        url: 'AddToCart?productId=' + id,
        method: "GET",
        processData: false,
        contentType: false,
        success: function (data) {
            var parsed = JSON.parse(data.responseText);
            alert(parsed.mess);
        },
        error: function (error) {

            var parsed = JSON.parse(error.responseText);

            alert(parsed.mess);
        }
    });
}

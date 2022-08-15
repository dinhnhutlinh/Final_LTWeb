function addToCart(id) {

    $.ajax({
        url: 'AddToCart?productId=' + id,
        method: "GET",
        processData: false,
        contentType: false,
        success: function (data) {
            console.log(data);
            var parsed = JSON.parse(data);
            loadQty();
            alert(parsed.mess);
        },
        error: function (error) {

            var parsed = JSON.parse(error.responseText);

            alert(parsed.mess);
        }
    });
}

function loadQty() {
    $.ajax({
        url: 'CartQty',
        method: "GET",
        processData: false,
        contentType: false,
        success: function (data) {
            var parsed = JSON.parse(data);
            $("#cartQty").html(parsed.data);
        },
        error: function (error) {
            var parsed = JSON.parse(error);
            alert(parsed.mess);
        }
    });
}

$(document).ready(function () {
    loadQty()
    $('.add-to-cart-btn').on('click', function () {
        let id = $(this).data('id');
        addToCart(id);
    });
});
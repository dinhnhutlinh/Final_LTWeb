$(document).ready(function () {
    let mess = $('#mess');

    let table = $('#productTable').DataTable({
        info: false,
        scrollX: true,
        ajax: {
            url: 'ProductController?action=all',
            dataSrc: '',
        },
        columns: [
            {
                title: '#id',
                data: 'id'
            },
            {
                title: 'Name',
                data: 'name'
            },
            {
                title: 'Image',
                data: 'imgDisplay',
                render: function (data) {
                    return '<img src="' + data +
                        '" height="100 px">';
                }
            },
            {
                title: 'Inventory',
                data: 'inventory'
            },
            {
                title: 'Price',
                data: 'price'
            },
            {
                title: 'Active',
                data: 'active',
                render: function (data) {
                    if (data == 1)
                        return '<span class="badge rounded-pill alert-success">Active</span>';
                    else
                        return '<span class="badge rounded-pill alert-danger">InActive</span>';
                }
            },
            {
                title: 'Action',
                data: 'id',
                render: function (data) {
                    return '<a href="product_edit?id=' + data + '" class="btn btn-warning text-white editBtn">' +
                        '<i class="fa fa-pen" style="height: 24px;" aria-hidden="true"></i></a>' +
                        '<button class="btn btn-danger removeBtn" >' +
                        '<i class="fa fa-trash" style="height: 24px;" aria-hidden="true"></i></button>';
                }
            }
        ],
    });
    $('#table').on('click', 'tbody .removeBtn', function () {
        let row = table.row($(this).closest('tr'));
        let data = row.data();
        if (confirm('Delete this blog?'))
            $.ajax({
                url: 'ProductController?id=' + data.id,
                method: "DELETE",
                success: function (data) {

                    row.remove().draw();
                    mess.html('<div class="alert alert-success" role="alert">' +
                        'Delete done! </div>');
                },
                error: function (error) {
                    mess.html('<div class="alert  alert-danger" role="alert">' +
                        'Delete Fail! </div>'
                    );
                }
            });
    });

});
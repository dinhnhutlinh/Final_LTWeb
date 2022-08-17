$(document).ready(function () {
    let table;
    let mess = $('#mess');

    table = $('#table').DataTable({
        info: false,
        scrollX: true,
        ajax: {
            url: 'AdminController?action=all',
            dataSrc: '',
        },

        columns: [
            {
                title: 'ID',
                data: 'id'
            },
            {
                title: 'First Name',
                data: 'firstName',
                render: function (data) {
                    return data == null ? '' : data;
                }
            },
            {
                title: 'Last Name',
                data: 'lastName',
                render: function (data) {
                    return data == null ? '' : data;
                }
            },
            {
                title: 'Avatar',
                data: 'avatar',
                render: function (data) {
                    return '<img src="' + data +
                        '" height="100 px">';
                }
            },
            {
                title: 'Address',
                data: 'address',
                render: function (data) {
                    return data == null ? '' : data;
                }
            },
            {
                title: 'Phone',
                data: 'phone',
                render: function (data) {
                    return data == null ? '' : data;
                }
            },
            {
                title: 'email',
                data: 'email',
                render: function (data) {
                    return data == null ? '' : data;
                }
            },
            {
                title: 'Action',
                render: function (data) {
                    return '<button  class="btn btn-success text-white editBtn">' +
                        '<i class="fa fa-eye" style="height: 24px;" aria-hidden="true"></i></button>';
                }

            },
        ],
    });
    $('#table').on('click', 'tbody .removeBtn', function () {
        let row = table.row($(this).closest('tr'));
        let data = row.data();
        if (confirm('Delete this blog?'))
            $.ajax({
                url: 'AdminController?id=' + data.id,
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

    $('#activeBtn').on('click', function (e) {
        let id = $('#id').val();
        let active = $('#active').val();
        $.ajax({
            url: 'AdminController',
            method: "POST",
            data: {
                id: id,
                active: active,
            },
            success: function (data) {
                let repo = JSON.parse(data);
                $('#messModel').html('<div class="alert alert-success" role="alert">' +
                    repo.mess + '</div>');
            },
            error: function (error) {
                let repo = JSON.parse(data);
                $('#messModel').html('<div class="alert  alert-danger" role="alert">' +
                    repo.mess + '</div>');
            }
        });
    });
    $('#resetPassword').on('click', function (e) {
        let id = $('#id').val();
        $.ajax({
            url: 'ResetPassword?id=' + id,
            method: "POST",
            success: function (data) {
                let repo = JSON.parse(data);
                $('#messModel').html('<div class="alert alert-success" role="alert">' +
                    repo.mess + '</div>');
            },
            error: function (error) {
                let repo = JSON.parse(data);
                $('#messModel').html('<div class="alert  alert-danger" role="alert">' +
                    repo.mess + '</div>');
            }
        });
    });
    $('#modelAdmin').on('hidden.bs.modal', function (event) {
        $('#id').val('');
        $('#lastName').val('');
        $('#firstName').val('');
        $('#avatar').attr('src', '');
        $('#address').val('');
        $('#phone').val('');
        $('#mail').val('');
        $('#active').val('');
    });

    $('#table').on('click', 'tbody .editBtn', function () {
        let data = table.row($(this).closest('tr')).data();
        $('#id').val(data.id);
        $('#lastName').val(data.lastName);
        $('#firstName').val(data.firstName);
        $('#avatar').attr('src', data.avatar);
        $('#address').val(data.address);
        $('#phone').val(data.phone);
        $('#mail').val(data.mail);
        $('#active').val(data.active);
        $('#modelAdmin').modal('show');
    });
    $('#table').on('click', 'tbody .removeBtn', function () {
        let row = table.row($(this).closest('tr'));
        let data = row.data();
        if (confirm('Delete this admin?'))
            $.ajax({
                url: 'AdminController?id=' + data.id,
                method: "DELETE",
                success: function (data) {
                    row.remove().draw();
                    mess.html('<div class="alert alert-success" role="alert">' +
                        'Delete done! </div>'
                    );
                },
                error: function (error) {
                    mess.html('<div class="alert  alert-danger" role="alert">' +
                        'Delete Fail! </div>'
                    );
                }
            });
    });
});
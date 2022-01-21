$(document).ready(function () {
    $('#newUser').DataTable({
        searching: false,
        paging: false,
        info: false,
        dom: 'lrt',
        columns: [
            { orderable: false },
            null,
            null,
            null,
            null,
            null
        ],
    });
    $('#example').DataTable();
});
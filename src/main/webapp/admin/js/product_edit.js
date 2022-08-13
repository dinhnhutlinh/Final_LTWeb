function fetchData(data) {
    $('#id').val(data.id);
    $('#name').val(data.name);
    $('#price').val(data.price);
    $('#minAge').val(data.minAge);
    $('#minPlayer').val(data.minPlayer);
    $('#maxPlayer').val(data.maxPlayer);
    $('#minPlaytime').val(data.minPlaytime);
    $('#maxPlaytime').val(data.maxPlaytime);
    quill.root.innerHTML = data.desc;
    $('#weightAmount').val(data.weightAmount);
    $('#weightUnits').val(data.weightUnits);
    $('#sizeHeight').val(data.sizeHeight);
    $('#sizeDepth').val(data.sizeDepth);
    $('#sizeUnits').val(data.sizeUnits);
    $('#active').val(data.active);
    $('#inventory').val(data.inventory);
    $('#producerId').val(data.producerId);
    $('#categoryId').val(data.categoryId);
    $('#discountId').val(data.discountId);
    $('#createAt').val(data.createAt);
    $('#updateAt').val(data.updateAt);
}


$(document).ready(function () {

    function uploadImage(id) {
        console.log('upload image')
        let formData = new FormData();
        formData.append('id', id);
        formData.append('imageProducts', $('#imageProducts').files);
        for (const value of formData.values()) {
            console.log(value);
        }
        $.ajax({
            url: 'UploadImageProduct',
            method: "POST",
            processData: false,
            contentType: false,
            data: formData,
            success: function (data) {
            },
            error: function (error) {

                $('#mess').html('<div class="alert  alert-danger" role="alert">' +
                    'Upload Image Fails !!!</div>'
                );
            }
        });
    }
    $('.btnSave').on('click', function (data) {

        let formData = new FormData();
        formData.append('id', $('#id').val());
        formData.append('name', $('#name').val());
        formData.append('price', $('#price').val());
        formData.append('minAge', $('#minAge').val());
        formData.append('minPlayer', $('#minPlayer').val());
        formData.append('minPlaytime', $('#minPlaytime').val());
        formData.append('maxPlayer', $('#maxPlayer').val());
        formData.append('maxPlaytime', $('#maxPlaytime').val());
        formData.append('desc', $('#desc').val());
        formData.append('imgDisplay', $('#imgDisplay').prop('files')[0]);
        formData.append('weightAmount', $('#weightAmount').val());
        formData.append('weightUnits', $('#weightUnits').val());
        formData.append('sizeHeight', $('#sizeHeight').val());
        formData.append('sizeDepth', $('#sizeDepth').val());
        formData.append('sizeUnits', $('#sizeUnits').val());
        formData.append('active', $('#active').val());
        formData.append('inventory', $('#inventory').val());
        formData.append('producerId', $('#producerId').val());
        formData.append('categoryId', $('#categoryId').val());
        formData.append('discountId', $('#discountId').val());

        $.ajax({
            url: 'ProductController',
            method: "POST",
            processData: false,
            contentType: false,
            data: formData,
            success:
                function (data) {
                    let resp = JSON.parse(data);
                    console.log(resp);
                    fetchData(resp.data);
                    uploadImage(resp.data.id);
                    $('#mess').html('<div class="alert  alert-success" role="alert">' + resp.mess +
                        '</div>'
                    );

                },
            error: function (error) {
                let resp = JSON.parse(error);
                console.log(resp);
                $('#mess').html('<div class="alert  alert-danger" role="alert">' +
                    'Add or edit Fail !!!</div>'
                );
            }
        })
        ;
    });
});
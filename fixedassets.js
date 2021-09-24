// id
// title
// cost
// acquisitionDate
// location
// description
// subCategory
// group
// depreciatesOn

let fixedasset_view_model;
fixedasset_view_model = new FixedAssetViewModel();

function FixedAssetViewModel() {
    const self = this;

    self.currentRow = ko.observable();
    self.currentFixedAsset = ko.observable(new FixedAsset());
    self.newFixedAsset = ko.observable(new FixedAsset());

    self.fixedassets = ko.observableArray([]);
    self.subCategories = ko.observableArray([]);
    self.groups = ko.observableArray([]);

    self.openFixedAssetPage = function (id) {
        window.location.href = appRootFolderName + '/fixedassets/fixedasset/' + id;
    };


    self.getAllsubCategories = function () {
        let route = ['fixedassets', 'requests', 'getAllsubCategories'];
        fetchDataJson(route, {}, function (categories) {
            self.subCategories(categories);
        });
    };
    self.getAllgroups = function () {
        let route = ['fixedassets', 'requests', 'getAllgroups'];
        fetchDataJson(route, {}, function (groups) {
            self.groups(groups);
        });
    };

    self.getAllsubCategories();
    self.getAllgroups();

    self.addFixedAsset = function () {
        let addFixedAssetForm = $('#addFixedAssetForm');

        if (!addFixedAssetForm[0].checkValidity()) {
            $('<input type="submit">').hide().appendTo(addFixedAssetForm).click().remove();
        }
        else {
            let route = ['fixedassets', 'requests', 'addFixedAsset'];
            let fixedasset = {};
   
            fixedasset.title = self.newFixedAsset().title();
            fixedasset.cost = self.newFixedAsset().cost();
            fixedasset.acquisitionDate = self.newFixedAsset().acquisitionDate();
            fixedasset.location = self.newFixedAsset().location();
            fixedasset.description = self.newFixedAsset().description();
            fixedasset.subCategory = self.newFixedAsset().subCategory() == undefined ? 0 : self.newFixedAsset().subCategory();
            fixedasset.group = self.newFixedAsset().group() == undefined ? 0 : self.newFixedAsset().group();
            postData(route, fixedasset, function (result) {
                if (result) {
                    toastr.success('Fixed Asset Added Successfully');
                    self.clearNewFixedAssetModal();
                    $('#datatable_fixedassets').DataTable().ajax.reload();

                }
                else {
                    toastr.warning('Fixed Asset Addition Failed');
                }
            });
            $('#datatable_fixedassets').DataTable().ajax.reload();
            $('#add_FixedAsset_modal').modal('hide');

        }
    };

    self.deleteCurrentFixedAsset = function () {
        let confirmDelete = confirm('are you sure you want to delete ' + self.currentFixedAsset().title());
        if (confirmDelete) {
            let deleteRoute = ['fixedassets', 'requests', 'deleteFixedAsset'];
            postData(deleteRoute, {'id': self.currentFixedAsset().id}, function (response) {
                if (response == '1') {
                    toastr.success('Fixed Asset Deleted');
                    $('#edit_FixedAsset_modal').modal('hide');
                    self.currentFixedAsset({'title': ''});
                    $('#datatable_fixedassets').DataTable().ajax.reload();
                }
                else {
                    toastr.error('Fixed Asset Deletion Failed');
                }
            });
        }
    };
    self.clearNewFixedModal = function () {
        self.newFixedAsset(new FixedAsset());
    };
    self.resetCurrentFixedAsset = function () {
        let table = $('#datatable_fixedassets').DataTable();
        let data = ko.toJS(table.row(self.currentRow()).data());
        fixedasset_view_model.currentFixedAsset(new FixedAsset(data));
    };

    self.submitEditFixedAsset = function () {

        let editCurrentFixedAssetForm = $('#editCurrentFixedAssetForm');

        if (!editCurrentFixedAssetForm[0].checkValidity()) {
            $('<input type="submit">').hide().appendTo(editCurrentFixedAssetForm).click().remove();
        }
        else {
            let route = ['fixedassets', 'requests', 'updateFixedAsset'];
            let table = $('#datatable_fixedassets').DataTable();
            let fixedasset = {};
            const originalFixedAsset = ko.toJS(table.row(self.currentRow()).data());
            const currentFixedAsset = ko.toJS(self.currentFixedAsset);
            console.log(originalFixedAsset);
            console.log(currentFixedAsset);

            for (const prop in originalFixedAsset) {
                if (prop != 'title' && prop != 'cost' && prop != 'subCategory' && prop != 'group' && prop != 'location') {
                    if (originalFixedAsset[prop] != currentFixedAsset[prop]) {
                        fixedasset[prop] = currentFixedAsset[prop];
                    }
                }
            }

            if ($.isEmptyObject(fixedasset)) {
                alert('No changes have been made');
                return;
            }
            fixedasset['id'] = originalFixedAsset.id;
            postData(route, fixedasset, function (result) {
                if (result){//} == '1') {
                    toastr.success('Fixed Asset Edited Successfully');
                    let table = $('#datatable_fixedassets').DataTable();
                    table.ajax.reload();
                }
                else {
                    toastr.warning('Fixed Asset Edit Failed');
                }
            });
        }
    };


}

function FixedAsset(fixedasset) {

    const self = this;

         
    self.id = fixedasset == undefined ? ko.observable('') : ko.observable(fixedasset.id);
    self.title = fixedasset == undefined ? ko.observable('') : ko.observable(fixedasset.title);
    self.cost = fixedasset == undefined ? ko.observable('') : ko.observable(fixedasset.cost);
    self.status = fixedasset == undefined ? ko.observable('') : ko.observable(fixedasset.status);
    self.acquisitionDate = fixedasset == undefined ? ko.observable('') : ko.observable(fixedasset.acquisitionDate);
    self.location = fixedasset == undefined ? ko.observable('') : ko.observable(fixedasset.location);
    self.description = fixedasset == undefined ? ko.observable('') : ko.observable(fixedasset.description);
    self.subCategory = fixedasset == undefined ? ko.observable('') : ko.observable(fixedasset.subCategory);
    self.group = fixedasset == undefined ? ko.observable('') : ko.observable(fixedasset.faGroup);
    self.depreciatesOn = fixedasset == undefined ? ko.observable('') : ko.observable(fixedasset.depreciatesOn);
    self.enableDelete = ko.observable(false);
    self.displayName = self.title;
}



ko.applyBindings(fixedasset_view_model);

const fixedassetsTableId = 'datatable_fixedassets';
const fixedassetsButtonFunc = '$(\'#add_FixedAsset_modal\').modal(\'show\');';
const fixedassetsDomParams = 'lfBrtip';
const fixedassetsContentName = 'FixedAsset';
const fixedassetsDatatableAjaxRoute = '/fixedassets/requests/getAllFixedAssets/datatablesEncode';
const fixedassetsColumns = [
    {'data': ['title', '(data.charAt(0).toUpperCase() + data.slice(1))']},
    {'data': ['cost' , 'false']},
    {'data': ['subCategory' , 'false']},
    {'data': ['faGroup' , 'false']},
    {'data': ['status' , 'false']},
    {'data': ['id', 'new String(\'<button  onclick="fixedasset_view_model.openFixedAssetPage(\' + data + \')" class="btn btn-bdesign-primary btn-sm"> Details <span class="fa fa-share-square"> </span></button>\')']}
];

configureDatatable(fixedassetsTableId, fixedassetsButtonFunc,{}, fixedassetsDomParams, fixedassetsContentName, fixedassetsDatatableAjaxRoute, fixedassetsColumns);

$(document).ready(function () {
    let table = $('#datatable_fixedassets').DataTable();

    // make all table row show pointers on hover
    $.each($('#datatable_fixedassets tbody tr'), function (index, tr) {
        tr.style.cursor = 'pointer';
    });

    $('#datatable_fixedassets tbody').on('click', 'tr', function () {

        fixedasset_view_model.currentRow(this);
        this.style.cursor = 'pointer';
        let data = ko.toJS(table.row(this).data());
        data['enableDelete'] = ko.observable(false);
        fixedasset_view_model.currentFixedAsset(new FixedAsset(data));
        //$('#edit_FixedAsset_modal').modal('show');
       // console.log(fixedasset_view_model.currentFixedAsset());

    });

    //this allows for a custom message in case the user enters an invalid password

});
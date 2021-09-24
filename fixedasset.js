const fixedasset_view_model = new fixedassetViewModel();
const fixedassetId = document.querySelector('#fixedassetId').value;
const fieldDataTypeIds = {
    'text': 1,
    'number': 2,
    'date': 3,
    'file': 4

};
const fieldTypeIds = {
    'free': 1,
    'bound': 2
};


function fixedassetViewModel() {
    const self = this;

    self.currentFixedAsset = ko.observable();
    self.currentFixedAssetRow = ko.observable();

    self.subCategories = ko.observableArray([]);
    self.groups = ko.observableArray([]);

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

}

    //-----------------------------General TAB AREA--------------------------------------
    self.currentFixedAsset = ko.observable({'title': ''});
    self.deleteCurrentFixedAsset = function () {
        let confirmDelete = confirm('are you sure you want to delete ' + self.currentFixedAsset().title);
        if (confirmDelete) {
            let deleteRoute = ['fixedassets', 'requests', 'deleteFixedAsset'];
            postData(deleteRoute, {
                'fixedassetID': self.currentFixedAsset().id
            }, function (response) {
                if (response == '1') {
                    toastr.success('Fixed Asset Deleted');
                    self.currentFixedAsset({'title': ''});
                    $('#datatable_fixedassets').DataTable().ajax.reload();
                }
                else {
                    toastr.error('Fixed Asset Deletion Failed');
                }
            });
        }
    };
    self.resetCurrentFixedAsset = function () {
        let table = $('#datatable_fields').DataTable();
        let data = ko.toJS(table.row(self.currentFieldRow()).data());
        asset_view_model.currentFixedAsset(new FixedAsset(data));
    };
    self.submitEditFixedAsset = function () {

        let editCurrentFixedAssetForm = $('#editCurrentFixedAssetForm');

        if (!editCurrentFixedAssetForm [0].checkValidity()) {
            $('<input type="submit">').hide().appendTo(editCurrentFixedAssetForm).click().remove();
        }
        else {

            let route = ['fixedassets', 'requests', 'updateFixedAsset'];
            let table = $('#datatable_fields').DataTable();
            let fixedasset = {};
            const originalFixedAsset = ko.toJS(table.row(self.currentFixedAssetRow()).data());
            const currentFixedAsset = ko.toJS(self.currentFixedAsset);
            console.log(originalFixedAsset);
            console.log(currentFixedAsset);
            for (const prop in originalFixedAsset) {
                if (originalFixedAsset[prop] != currentFixedAsset[prop]) {
                    fixedasset[prop] = currentFixedAsset[prop];
                }
            }
            if ($.isEmptyObject(field)) {
                alert('No changes have been made');
                return;
            }
            field['id'] = currentFixedAsset.id;
            postData(route, fixedasset, function (result) {
                if (result == '1') {
                    toastr.success('Fixed Asset Edited Successfully');
                    let table = $('#datatable_fixedassets').DataTable();
                    table.ajax.reload();
                    self.currentFixedAsset({'title': ''});
                }
                else {
                    toastr.warning('Fixed Asset Edit Failed');
                }
            });

        }
    };

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

console.log(fixedassetId);

ko.applyBindings(fixedasset_view_model);


const fixedassetsTableId = 'datatable_fixedassets';
//const productFieldsButtonFunc = '$(\'#add_ProductField_modal\').modal(\'show\');';
const fixedassetsFieldsDomParams = 'lfBrtip';
const fixedassetsContentName = 'Fixed Assets';
const fixedassetsFieldsDatatableAjaxRoute = '/fixedassets/requests/getAllFixedAssets';
const fixedassetsColumns = [
    {'data': ['title', '(data.charAt(0).toUpperCase() + data.slice(1))']},
    {'data': ['cost' , 'false']},
    {'data': ['subCategory' , 'false']},
    {'data': ['faGroup' , 'false']},
    {'data': ['status' , 'false']}
];

configureDatatable(fixedassetsTableId, {},{}, fixedassetsFieldsDomParams, fixedassetsContentName, fixedassetsFieldsDatatableAjaxRoute, fixedassetsColumns);

$(document).ready(function () {
    let table = $('#datatable_fixedassets').DataTable();

    // make all table row show pointers on hover
    $.each($('#datatable_fixedassets tbody tr'), function (index, tr) {
        tr.style.cursor = 'pointer';
    });

    $('#datatable_fixedassets tbody').on('click', 'tr', function () {
        fixedasset_view_model.currentFixedAsset(this);
        this.style.cursor = 'pointer';
        let data = ko.toJS(table.row(this).data());
        data['fixedassetId'] = data['fixedassetId'];
        fixedasset_view_model.currentFixedAsset(new FixedAsset(data));
        // console.log(product_view_model.currentField());

    });

    //this allows for a custom message in case the product enters an invalid password
});




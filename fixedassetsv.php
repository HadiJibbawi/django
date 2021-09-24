<?php
/**
 * Created by PhpStorm.
 * User: Jaafar1018
 * Date: 05/03/21
 * Time: 6:16 PM
 */
?>

<div class="container-fluid" style="margin-bottom: 5rem">
    <div class="row justify-content-around">

        <div class="col-md-8 col-lg-8 col-sm-12">
            <div id="fixedassets_table_container" class="col-12">
                <?php
                $table_columns = ['Title ', 'Cost', 'Category','Group','Status','Edit'];
                $table_properties = ["tableId" => "datatable_fixedassets", "title" => 'Fixed Assets', 'title-size' => 'h3'];
                include(APPROOT . '/views/partials/_datatable_full_generic.php');
                ?>
            </div>
        </div>
    </div>
</div>

<!--
            id
            title
            cost
            acquisitionDate
            location
            description
            subCategory
            group
            depreciatesOn
            
            
-->
<?php
$pane_properties = [];
$pane_properties['formName'] = 'addFixedAssetForm';
$pane_properties['title'] = 'Fixed Asset';
$pane_properties['modalTitle'] = 'Add Fixed Asset';
$pane_properties['itemName'] = 'FixedAsset';
$values = [
    ['title' => 'Title',
        'name' => 'title',
        'value' => '$root.newFixedAsset().title',
        'type' => 'text',
        'enable' => 'false',
        'required' => 'true'],

    ['title' => 'Cost',
        'name' => 'cost',
        'value' => '$root.newFixedAsset().cost',
        'type' => 'number',
        'enable' => 'false',
        'required' => 'true'],

    ['title' => 'Acquisition Date',
        'name' => 'acquisitionDate',
        'value' => '$root.newFixedAsset().acquisitionDate',
        'type' => 'date',
        'enable' => 'false',
        'required' => 'true'],

    ['title' => 'Location',
    'name' => 'location',
    'value' => '$root.newFixedAsset().location',
    'type' => 'text',
    'enable' => 'false',
    'required' => 'false'],

    ['title' => 'Description',
    'name' => 'description',
    'value' => '$root.newFixedAsset().description',
    'type' => 'text',
    'enable' => 'false',
    'required' => 'false'],

    ['title' => 'Category',
        'name' => 'subCategory',
        'value' => '$root.newFixedAsset().subCategory',
        'type' => 'select',
        'enable' => 'false',
        'options' => '$root.subCategories',
        'optionsValue' => 'id',
        'optionsText' => 'title',
        'caption' => 'Choose Category',
        'required' => 'true'],

    ['title' => 'Group',
    'name' => 'group',
    'value' => '$root.newFixedAsset().group',
    'type' => 'select',
    'enable' => 'false',
    'options' => '$root.groups',
    'optionsValue' => 'id',
    'optionsText' => 'title',
    'caption' => 'Choose Group',
    'required' => 'false'],

    ['title' => 'Depreciates On',
        'name' => 'depreciatesOn',
        'value' => '$root.newFixedAsset().depreciatesOn',
        'type' => 'date',
        'enable' => 'false',
        'required' => 'true']

];
$pane_properties['values'] = $values;
include(APPROOT . '/views/partials/_add_item_modal.php');
?>






<?php /*
$pane_properties = [];
$pane_properties['formName'] = 'editCurrentFixedAssetForm';
$pane_properties['title'] = '$root.currentFixedAsset().displayName()';
$pane_properties['modalTitle'] = '$root.currentFixedAsset().displayName()';
$pane_properties['itemName'] = 'FixedAsset';
$pane_properties['modalSizeClass'] = 'modal-xl';
$pane_properties['emptyValueCheck'] = '';
$pane_properties['formName'] = 'editCurrentFixedAssetForm';
$pane_properties['resetFunction'] = '$root.resetCurrentFixedAsset';
$pane_properties['submitFunction'] = '$root.submitEditFixedAsset';
//can set $pane_properties['modalId'] or else it will be edit_modalitem_modal
$values = [

    ['title' => 'Title',
        'name' => 'title',
        'value' => '$root.currentFixedAsset().title',
        'type' => 'text',
        'enable' => 'false',
        'caption' => 'Choose Title',
        'required' => 'true'],
    ['title' => 'Cost',
        'name' => 'cost',
        'value' => '$root.currentFixedAsset().cost',
        'type' => 'number',
        'enable' => 'false',
        'required' => 'true'
    ],
    ['title' => 'Acquisition Date',
        'name' => 'acquisitionDate',
        'value' => '$root.currentFixedAsset().acquisitionDate',
        'type' => 'date',
        'enable' => 'false',
        'required' => 'false'],

    ['title' => 'Location',
        'name' => 'location',
        'value' => '$root.currentFixedAsset().location',
        'type' => 'text',
        'enable' => 'false',
        'required' => 'false'],


    ['title' => 'Description',
        'name' => 'description',
        'value' => '$root.currentFixedAsset().description',
        'type' => 'text',
        'enable' => 'false',
        'required' => 'false'],

    ['title' => 'Group',
        'name' => 'group',
        'value' => '$root.currentFixedAsset().group',
        'type' => 'select',
        'enable' => 'false',
        'options' => '$root.groups',
        'optionsValue' => 'id',
        'optionsText' => 'title',
        'caption' => 'Choose Group',
        'required' => 'false'],

    ['title' => 'Category',
        'name' => 'subCategory',
        'value' => '$root.currentFixedAsset().subCategory',
        'type' => 'select',
        'enable' => 'false',
        'options' => '$root.subCategories',
        'caption' => 'Choose Category',
        'optionsValue' => 'id',
        'optionsText' => 'title',
        'required' => 'true'],
    ['title' => 'Depreciates On',
        'name' => 'depreciatesOn',
        'type' => 'date',
        'enable' => 'false',
        'required' => 'true'],
    ['title' => 'DELETE',
        'name' => 'delete',
        'buttonClass' => 'btn btn-danger w-25',
        'type' => 'button',
        'enable' => 'true',
        'buttonClick' => '$root.deleteCurrentFixedAsset',
        'enableHandle' => '$root.currentFixedAsset().enableDelete',
        'required' => 'false']

];
$pane_properties['values'] = $values;
include(APPROOT . '/views/partials/_object_details_modal.php');*/
?>
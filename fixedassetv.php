<?php
/**
 * Created by PhpStorm.
 * User: Jaafar1018
 * Date: 29/04/20
 * Time: 2:40 PM
 */
?>
<input id="fixedassetId" type="text" hidden disabled value="<?php echo $data['fixedasset']->id; ?>"/>


<div class="container-fluid" style="margin: 5rem 0">
    <div class="card">
        <div class="card-body">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs" id="fixedassetTab" role="tablist">
                <li class="nav-item active" role="presentation">
                    <button class="nav-link " id="assetinfo-tab" data-bs-toggle="tab" data-bs-target="#assetinfo" type="button" role="tab" aria-controls="assetinfo" aria-selected="true">General</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link " id="operations-tab" data-bs-toggle="tab" data-bs-target="#operations" type="button" role="tab" aria-controls="operations" aria-selected="false">Operations</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link " id="history-tab" data-bs-toggle="tab" data-bs-target="#history" type="button" role="tab" aria-controls="history" aria-selected="false">History</button>
                </li>

            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div class="tab-pane active" id="assetinfo" role="tabpanel" aria-labelledby="assetinfo-tab">
                    <div class="card">
                        <div class="card-body">
                            <div class="container-fluid" style="margin-bottom: 5rem">
                                <div class="row justify-content-around">
                                <ul>
                                    <li>
                                       <strong>ID</strong>: Presentation only
                                    </li>
                                    <li>
                                       <strong>Title</strong>
                                    </li>
                                    <li>
                                       <strong>Cost</strong>
                                    </li>
                                    <li>
                                       <strong>Status</strong>
                                    </li>
                                    <li>
                                       <strong>Acquisition Date</strong>
                                    </li>
                                    <li>
                                       <strong>Location</strong>
                                    </li>
                                    <li>
                                       <strong>Description</strong>
                                    </li>
                                    <li>
                                       <strong>Sub Category</strong>
                                    </li>
                                    <li>
                                       <strong>Group</strong>
                                    </li>
                                    <li>
                                       <strong>Depreciates On</strong>
                                    </li>
                                    <li>
                                       <strong>Delete button</strong>
                                    </li>
                                    
                                </ul>
                                    
                                </div>
                                <form id="editFixedAssetForm">
                                    <div class="row justify-content-around">
                                        <div class="col-md-8 col-lg-8 col-xl-8 col-sm-12">
                                            <div class="row justify-content-around">
                                                <div class="col-sm-12">
                                                    <div class="row justify-content-around">
                                                        <div class="col-md-4 col-lg-4 col-xl-4 col-sm-6">
                                                            <label for="fixedassetId">ID:</label>
                                                            <input type="number" id="fixedassetId" class="form-control" value="<?php echo $data['fixedassetId']; ?>" disabled>
                                                        </div>
                                                        <div class="col-md-6 col-lg-6 col-xl-6 col-sm-4">
                                                            <label for="title">Title :</label>
                                                            <input type="text" id="title" class="form-control" value="<?php echo $data['title']; ?>" disabled>
                                                        </div>
                                                        <div class="col-md-2 col-lg-2 col-xl-2 col-sm-2" style="margin-top: 2rem">
                                                            <a id="editFixedAsset" target="_blank" class="btn btn-info"> + </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                  
                                </form>

                            </div> 
                        </div>
                    </div>
                </div>
                <div class="tab-pane " id="operations" role="tabpanel" aria-labelledby="operations-tab">
                    <div class="card">
                        <div class="card-body">
                            <div class="container-fluid" style="margin-bottom: 5rem">
                                <div class="row justify-content-around">
                      
                                <ul>
                                    <li>
                                       <strong>Transfer Account</strong>
                                    </li>
                                    <li>
                                       <strong>Manual Depreciation</strong>
                                    </li>
                                    <li>
                                       <strong>Initialize Fixed Asset again</strong>
                                    </li>
                                </ul>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
                <div class="tab-pane " id="history" role="tabpanel" aria-labelledby="history-tab">
                    <div class="card">
                        <div class="card-body">
                            <div class="container-fluid" style="margin-bottom: 5rem">
                                <div class="row justify-content-around">
                      
                                <ul>
                                    <li>
                                       <strong>Transfer History</strong>
                                    </li>
                                    <li>
                                       <strong>Depreciation History</strong>
                                    </li>

                                </ul>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
            </div>
            </div>
            </div>
                



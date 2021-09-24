<?php
/**
 * Created by PhpStorm.
 * User: Jaafar1018
 * Date: 09/05/20
 * Time: 12:40 AM
 */

class FixedAssets extends Controller
{
    private $fixedassetModel;

    public function __construct()
    {
        $this->fixedassetModel = $this->model('FixedAsset');
    }

    //this function is here is the index root function
    public function index()
    {
        $data = ['title' => 'Baydoun Design', 'description' => 'Please login if you\'re an admin or else, please register'];
        $this->view('pages/index', $data);

    }

    public function fixedassets()
    {
        $data = ['title' => 'Fixed Assets', 'description' => 'Page for Fixed Assets Management'];
        $template = [];
        $template['page_script'] = 'fixedassets';
        $this->view('admin/fixedassets', $data, $template);
    }

    public function fixedasset($id = null, $tab = 'details')
    {
//        var_dump(func_get_args());
        if ($id == null) {
            die('invalid parameters');
        }
        else {
            $fixedasset = $this->fixedassetModel->getFixedAsset($id);
            $data = ['title' => ucfirst($fixedasset->title) . ' Fixed Asset Page', 'description' => 'Page for Asset Details', 'currency' => 'L.L', 'product' => $fixedasset, 'tab' => $tab];
            $template = [];
            $template['page_script'] = 'fixedasset';
            $this->view('admin/fixedasset', $data, $template);
        }
    }

    private function addFixedAsset($fixedasset)
    {

        return $this->fixedassetModel->addFixedAsset($fixedasset);
    }

    

    private function updateFixedAsset($fixedasset)
    {
        foreach ($fixedasset as $key => $item) {
            $newKey = $this->camelCaseToUnderscore($key);
            if ($newKey == $key) {
                continue;
            }
            $fixedasset[$newKey] = $item;
            unset($fixedasset[$key]);
        }
        
        echo $this->fixedassetModel->updateFixedAsset($fixedasset);
    }


    private function deleteFixedAsset($id)
    {
        return $this->fixedassetModel->deleteFixedAsset($id['id']);
    }

    public function requests($request)
    {
        switch ($request) {
            case 'getAllFixedAssets':
                if (isset(func_get_args()[1])) {

                    if (func_get_args()[1] == 'datatablesEncode') {
                        echo $this->datatables_encode($this->fixedassetModel->getAllFixedAssets());
                    }
                    else {
                        echo $this->encode_json($this->fixedassetModel->getAllFixedAssets());
                    }
                }
                else {
                    echo $this->encode_json($this->fixedassetModel->getAllFixedAssets());
                }
                break;
            case 'getAllsubCategories':
                echo self::encode_json($this->fixedassetModel->getAllsubCategories());
                break;
            case 'getAllgroups':
                echo self::encode_json($this->fixedassetModel->getAllgroups());
                break;
            case 'addFixedAsset':
                if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                    echo $this->addFixedAsset($_POST);
                }
                else {
                    echo 'invalid request data';
                }
                break;
            case 'updateFixedAsset':
                if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                    $this->updateFixedAsset($_POST);
                }
                else {
                    $this->fixedassets();
                }
                break;
            case 'deleteFixedAsset':
                if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                    echo $this->deleteFixedAsset($_POST);

                }
                else {
                    echo 'invalid request data';
                }
                break;
            default:
                echo "invalid request";
                break;
        }
    }
}

?>
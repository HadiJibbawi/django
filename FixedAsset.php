<?php

class FixedAsset
{
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    public function getAllFixedAssets()
    {
        $this->db->query('SELECT fa.id, fa.title, fa.cost,
                         case fa.active when 1 then "Active" else "Inavtive" end as status,
                         subcat.title as subCategory, grp.title as faGroup
                         FROM fixed_assets as fa 
                         join fixed_assets_subcategory as subcat on fa.subcategory_id = subcat.id
                         left join fixed_assets_group as grp on fa.group_id = grp.id 
                        ');
        $fixedassets = $this->db->resultSet();
        return $fixedassets;
    }

    
    public function getFixedAsset($id)
    {
        $this->db->query('SELECT fa.id, fa.title, fa.cost,
        case fa.active when 1 then "Active" else "Inavtive" end as status,
        subcat.title as subCategory, grp.title as faGroup
        FROM fixed_assets as fa 
        join fixed_assets_subcategory as subcat on fa.subcategory_id = subcat.id
        left join fixed_assets_group as grp on fa.group_id = grp.id 
        WHERE fa.id = :id');
        $this->db->bind(':id', $id);
        $fixedasset = $this->db->single();
        return $fixedasset;
    }

    public function getAllsubCategories()
    {
        $this->db->query('SELECT id,title FROM fixed_assets_subcategory');
        $subCategories = $this->db->resultSet();
        return $subCategories;
    }

    public function getAllgroups()
    {
        $this->db->query('SELECT id,title FROM fixed_assets_group');
        $groups = $this->db->resultSet();
        return $groups;
    }

    

    public function addFixedAsset($fixedasset)
    {
        $title = $fixedasset['title'];
        $cost = $fixedasset['cost'];
        $acquisitionDate = $fixedasset['acquisitionDate'];
        $location = $fixedasset['location'];
        $description = $fixedasset['description'];
        $subCategory = $fixedasset ['subCategory'];
        $group = $fixedasset['group'];
        $depreciatesOn = $fixedasset['depreciatesOn'];
        $this->db->query('INSERT INTO `fixed_assets` (title, cost, acquisition_date, location, description, subcategory_id, group_id, depreciates_on)
                          VALUES (:title, :cost, :acquisitionDate, :location, :description, :subCategory, :group, :depreciatesOn)');
        $this->db->bind(':title', $title);
        $this->db->bind(':cost', $cost);
        $this->db->bind(':acquisitionDate', $acquisitionDate);
        $this->db->bind(':location', $location);
        $this->db->bind(':description', $description);
        $this->db->bind(':subCategory', $subCategory);
        $this->db->bind(':group', $group);
        $this->db->bind(':depreciatesOn', $depreciatesOn);
        return $this->db->execute();
        
    }

    
    public function updateFixedAsset($fixedasset)
    {

        $table = 'fixed_assets';
        $columns = $fixedasset;
        $primaryKeyName = 'id';
        $primaryKeyValue = $fixedasset['id'];
        unset($columns['id']);

        return $this->db->updateTable($table, $columns, $primaryKeyName, $primaryKeyValue);
    }


    public function deleteFixedAsset($id)
    {
        $this->db->query('DELETE FROM `fixed_assets` WHERE id = :id');
        $this->db->bind(':id', $id);
        $this->db->execute();
    }

}
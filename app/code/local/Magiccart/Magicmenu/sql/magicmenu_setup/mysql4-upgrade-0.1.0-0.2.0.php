<?php

/**
 * Magiccart 
 * @category  Magiccart 
 * @copyright   Copyright (c) 2014 Magiccart (http://www.magiccart.net/) 
 * @license   http://www.magiccart.net/license-agreement.html
 * @Author: Magiccart<team.magiccart@gmail.com>
 * @@Create Date: 2014-05-28 10:10:00
 * @@Modify Date: 2014-09-14 12:13:45
 * @@Function:
 */
?>
<?php

$this->startSetup();
$this->addAttribute(Mage_Catalog_Model_Category::ENTITY, 'color_code', array(
    'group' => 'Magiccart',
    'input' => 'text',
    'type' => 'varchar',
    'note' => "Provide hexcode for colors Example: #2f2f2f",
    'label' => 'Color Code',
    'backend' => '',
    'visible' => true,
    'required' => false,
    'visible_on_front' => true,
    'user_defined' => true,
    'global' => Mage_Catalog_Model_Resource_Eav_Attribute::SCOPE_STORE,
    'order' => 35
));

$this->endSetup();

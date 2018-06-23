/**
 * MageWorx
 * 
 * NOTICE OF LICENSE
 * 
 * This source file is subject to the MageWorx EULA that is bundled with
 * this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://www.mageworx.com/LICENSE-1.0.html
 * 
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@mageworx.com so we can send you a copy immediately.
 * 
 * DISCLAIMER
 * 
 * Do not edit or add to this file if you wish to upgrade the extension
 * to newer versions in the future. If you wish to customize the extension
 * for your needs please refer to http://www.mageworx.com/ for more information
 * or send an email to sales@mageworx.com
 * 
 * @category   design
 * @package    default_default
 * @copyright  Copyright (c) 2013 MageWorx (http://www.mageworx.com/)
 * @license    http://www.mageworx.com/LICENSE-1.0.html
 */

var MWXreportsDashboard = Class.create();
MWXreportsDashboard.prototype =
{
    initialize: function(varienTabs) {
        if (typeof varienTabs == 'undefined') {
            alert('varienTabs is undefined.');
        }
        this.varienTabs = varienTabs;
        
    },
    
    applyFilter: function(filter) {
        this.varienTabs.tabs.each(function(tab){
            this.updateFilterParam(tab, filter);
            
            //prepare tab for ajax reloading
            tab.addClassName('notloaded');

            //reload active tab
            if (tab.hasClassName('active')) {
                this.varienTabs.loadShadowTab(tab);
            }
        }, this);
    },
    
    updateFilterParam: function(tab, filterString) {
        tab.href = tab.href.replace(/(\/filter\/)(.+)(\/)/, "$1"+filterString+"$3");
    }
}
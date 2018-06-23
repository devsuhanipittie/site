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
 * @category   MageWorx
 * @package    js
 * @copyright  Copyright (c) 2012 MageWorx (http://www.mageworx.com/)
 * @license    http://www.mageworx.com/LICENSE-1.0.html
 */
var MWXreportsProduct = Class.create();
MWXreportsProduct.prototype =
{
    initialize: function(varienTabs, targetTabId) {
        if (typeof varienTabs == 'undefined') {
            alert('varienTabs is undefined.');
        }
        this.xreportsStatisticsTab = varienTabs.tabs.detect(function(tab){
            return tab.id == (varienTabs.containerId + '_' + targetTabId);
        });
        this.xreportsStatisticsTab.hrefOrig = this.xreportsStatisticsTab.href;
    },

    filterProductStatistics: function(filter) {
        if (!this.xreportsStatisticsTab || (typeof this.xreportsStatisticsTab == 'undefined')) {
            return;
        }
        //prepare tab for ajax reloading
        this.xreportsStatisticsTab.addClassName('notloaded');
        this.xreportsStatisticsTab.href = this.xreportsStatisticsTab.hrefOrig + 'filter/'+filter;

        //reload tab
        product_info_tabsJsTabs.loadShadowTab(this.xreportsStatisticsTab);
        this.xreportsStatisticsTab.href = this.xreportsStatisticsTab.hrefOrig;
    }
};


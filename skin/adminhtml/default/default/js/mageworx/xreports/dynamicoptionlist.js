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
 * @category   lib
 * @package    js
 * @copyright  Copyright (c) 2013 MageWorx (http://www.mageworx.com/)
 * @license    http://www.mageworx.com/LICENSE-1.0.html
 */

/**
 * Dependent/Cascading Select List
 * @class
 * @author     MageWorx Dev Team <dev@mageworx.com>
 */
var DependentList = Class.create();
DependentList.prototype =
{
    /**
     * Array of options' values which always will stay in dependent select element
     * @type {array}
     */
    forceUseOptions: [''],

    /**
     * Class constructor
     * @constructor
     * @param {string} masterSelect Master select element
     * @param {string} dependentSelect Dependent select element
     * @param {object} dependencyData Dependency data in JSON format
     */
    initialize: function(masterSelect, dependentSelect, dependencyData) {

        /**
         * Master select element
         * @type {object}
         */
        this.masterSelect = $(masterSelect);

        /**
         * Dependent select element
         * @type {object}
         */
        this.dependentSelect = $(dependentSelect);

        /**
         * Clone of dependent select element.
         * It is used to store initial dependent options data
         * @type {Element}
         */
        this.dependentSelectClone = this._cloneDependentOptions();

        /**
         * Dependency data config
         * @type {object}
         */
        this.dependencyData = dependencyData;

        /**
         * Master select onClick observer
         * @type {function}
         */
        this.masterSelectChangeObserver = this.applyDependency.bind(this);

        Event.observe(this.masterSelect, 'change', this.masterSelectChangeObserver);
        this.applyDependency();
    },

    /**
     * Create a clone of dependent select
     * @return {Element} Element of type 'select'
     */
    _cloneDependentOptions: function() {
        var cloneSelect = new Element('select');

        this._populateSelectWithOptions(this.dependentSelect, cloneSelect);
        return cloneSelect;
    },

    /**
     * Get option values from dependency config by master key
     * @param {string} key Master' option key
     * @return {array}
     */
    _getDependencyData: function(key) {
        if (typeof(this.dependencyData[key]) == "undefined") {
            return {};
        }
        return this.dependencyData[key];
    },

    /**
     * Observer method.
     * Filter dependent select according to the seleced master's value
     * 
     * @param {object} event
     */
    applyDependency: function(event) {
        var selectedValue = this.masterSelect.value;
        var values        = this._getDependencyData(selectedValue);

        this.dependentSelect.length = 0;
        this._populateSelectWithOptions(this.dependentSelectClone, this.dependentSelect, values.concat(this.forceUseOptions));
    },

    /**
     * Populate destination select element with options from source select element.
     * Source element options are passed through the filter
     *
     * @param {Element} sourceSelect Source select element
     * @param {Element} destSelect Destination select element
     * @param {array} sourceFilter Filter which is applied for source select options
     */
    _populateSelectWithOptions: function(sourceSelect, destSelect, sourceFilter) {
        sourceOptions = sourceSelect.options;
        var selectedSourceValue = sourceSelect.value;
        for (var i = 0; i < sourceSelect.length; i++) {
            var isSetSourceFilter = typeof(sourceFilter) != "undefined" && typeof(sourceFilter) == "object"  && sourceFilter.length > 0;
            if (isSetSourceFilter && (sourceFilter.indexOf(sourceSelect[i].value) == -1)) {
                continue;
            }
            var destOption = new Option(sourceOptions[i].text, sourceOptions[i].value);
            if (sourceOptions[i].value == selectedSourceValue) {
                destOption.selected = true;
            }
            destSelect.insert(destOption);
        }
    }
}
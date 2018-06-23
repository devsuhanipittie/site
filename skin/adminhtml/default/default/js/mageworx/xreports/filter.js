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

/**
 * Report filter control
 * 
 * @class
 * @property {object} config                        Additional class configuration
 * @property {object} config.display_date_format    The date format which used in filter title
 * @property {object} config.input_date_format      The date format which used in filter input elements
 * 
 * @author     MageWorx Dev Team <dev@mageworx.com>
 */
var MWXreportsFilter = Class.create();
MWXreportsFilter.prototype =
{
    /**
     * Class constructor
     * @constructor
     * @param {string} filterId The main control ID
     * @param {object} config Additional configuration
     */
    initialize: function(filterId, config) {
        
        /**
         * Main filter block ID
         * @type {string}
         */
        this.filterId = filterId;
        
        /**
         * Main filter block
         * @type {Element}
         */
        this.filter   = $(this.filterId);
        
        /**
         * Filter form 
         * @type {MWXreportsFilterForm}
         */
        this.form     = new MWXreportsFilterForm(this.filter.down('#' + this.filterId + '-form'));
        
        /**
         * Visible filter block title
         * @type {Element}
         */
        this.title    = this.filter.down('#'+this.filterId+'-title');
        
        /**
         * Additional filter configuration
         * @type {object}
         * @see class description for details
         */
        this.config = config;
        

        /**
         * Filter block title click observer method
         * @type {function}
         */
        this.titleClickObserver = this.toggleForm.bind(this);
        
        /**
         * Document click observer
         * @type {function}
         */
        this.documentMousedownObserver = this.checkFilter.bind(this);
        
        // register event handlers
        Event.observe(this.title, 'click', this.titleClickObserver);
        if (varienGlobalEvents) {
            varienGlobalEvents.clearEventHandlers('xreports_filter_form_change');
            varienGlobalEvents.attachEventHandler('xreports_filter_form_change', this.changeFilter.bind(this));
            varienGlobalEvents.clearEventHandlers('xreports_filter_form_submit');
            varienGlobalEvents.attachEventHandler('xreports_filter_form_submit', this.applyFilter.bind(this));
        }
    },
    
    /**
     * Register callback handler on filter changes
     * @param {function} callback
     */
    setCallback: function(callback) {
        this.filterCallback = callback;
    },

    /**
     * Toggle form block visibility
     */
    toggleForm: function() {
        if (!this.form.visible()) {
            document.observe('mousedown', this.documentMousedownObserver);
        }
        else {
            document.stopObserving('mousedown', this.documentMousedownObserver);
        }
        this.toggleTitle();
        this.form.toggle();
    },
    
    /**
     * Toggle filter title view
     */
    toggleTitle: function() {
        this.title.toggleClassName('open');
    },

    /**
     * Event handler for 'xreports_filter_form_submit' event
     * Apply filter callback handler
     */
    applyFilter: function() {
        //apply callback function
        if (typeof(this.filterCallback) != 'undefined') {
            this.filterCallback(this.getFilterString());
        }
        this.toggleForm();
    },
    
    /**
     * Event handler for 'xreports_filter_form_change' event
     * @param {*} params from fired event
     */
    changeFilter: function(params) {
        if (!params || typeof params.formElements == 'undefined' || !params.formElements) {
            return;
        }
        
        var titleBlocksMap = {
            'main-fieldset': 'main',
            'compare-fieldset': 'sub'
        };
        var updatedBlocks = [];
        params.formElements.each(function(row){
            if (typeof titleBlocksMap[row.fieldset] != 'undefined') {
                this.updateFilterTitleBlock(titleBlocksMap[row.fieldset], row.elements, true);
                updatedBlocks.push(row.fieldset);
            }
        }, this);
        
        // hide not updated blocks
        var allBlocks = Object.keys(titleBlocksMap);
        allBlocks.each(function(block){
            if (updatedBlocks.indexOf(block) == -1) {
                this.updateFilterTitleBlock(titleBlocksMap[block], [], false);
            }
        }, this);
    },
    
    /**
     * Change the text in filter title block
     * @param {string} blockType Could be 'main' or 'sub'
     * @param {array} fields Source fields. Values of them are used for title text
     * @param {boolean} visibility Set block visibility
     */
    updateFilterTitleBlock: function (blockType, fields, visibility) {
        var block = this.title.down('.' + blockType + '-text');
        if (!block || typeof block == 'undefined') {
            return;
        }
        
        this.setElementVisibility(block, visibility);
        
        var blockParts = block.select('span');
        for (var i = 0; i < blockParts.length; i++) {
            if (typeof fields[i] == 'undefined') {
                break;
            }
            var formattedDate = fields[i].value;
            if (typeof this.config.input_date_format != 'undefined' 
                && typeof this.config.display_date_format != 'undefined' ) {
                try {
                    formattedDate = Date.parseDate(formattedDate, this.config.input_date_format).print(this.config.display_date_format);
                }
                catch(e) {
                    //do nothing in case of wrong date formatting
                    ;
                }
            }
            blockParts[i].update(formattedDate);
        }
    },
    
    /**
     * Change element visibility
     * @param {Element} element
     * @param {boolean} visibility
     */
    setElementVisibility: function(element, visibility) {
        switch (visibility) {
            case true:
                element.removeClassName('no-display')
                break;
            default:
                element.addClassName('no-display')
                break;
        }
    },
    
    /**
     * Collect form elements to base64 encoded query string
     * @return {string} base64 encoded query string
     */
    getFilterString: function() {
        var filters = this.form.collectElements();
        for(var i = 0; i < filters.length; ++i){
            if(!filters[i].value || !filters[i].value.length || filters[i].disabled){
                filters.splice(i,1);
            }
        }
        return encode_base64(Form.serializeElements(filters));
    },

    /**
     * It is called when the user presses a mouse button anywhere in the
     * document, if the filter form is shown.  If the click was outside the open
     * form block this function closes it.
     * @param {MouseEvent} event
     */
    checkFilter: function(event) {
        //var element = Event.findElement(event);
        //for (; element != null && element != this.filter; element = element.parentNode){
        //    // move up on DOM tree till document node or this.filter element
        //    ;
        //}
        //if (element == null) {
        //    this.toggleForm();
        //}
    }
}

/**
 * Report filter form class
 * 
 * @class
 * @author     MageWorx Dev Team <dev@mageworx.com>
 */
var MWXreportsFilterForm = Class.create();
MWXreportsFilterForm.prototype = {
    
    /**
     * Form fieldset collection
     * @type {array}
     */
    fieldsetCollecion: null,
    
    /**
     * Class constructor
     * @constructor
     * @param {Element} formBlock The main from block object
     */
    initialize: function(formBlock) {
        /**
         * @type {Element} formBlock The main from block object
         */
        this.form = formBlock;
        
        /**
         * Form button click observer
         * @type function
         */
        this.formButtonClickObserver = this.submitForm.bind(this);

        /**
         * Compare checkbox change observer
         * @type function
         */
        this.formCompareChangeObserver = this.toggleCompare.bind(this);
        
        var submit = this.form.select('.form-buttons .apply').first();
        if (submit && (typeof submit != 'undefined')) {
            Event.observe(submit, 'click', this.formButtonClickObserver);
        }
        
        var compare = this.form.down('input[type="checkbox"].checkbox-compare');
        if (compare && (typeof compare != 'undefined')) {
            Event.observe(compare, 'change', this.formCompareChangeObserver);
        }
    },
    
    /**
     * Returns from elements ID prefix
     * @return {string}
     */
    getElementIdPrefix: function() {
        return this.form.id + '-';
    },
    
    /**
     * Collect all form fieldsets
     * @return {array} Fieldset collection
     */
    getFieldsets: function() {
        if (!this.fieldsetCollecion) {
            this.fieldsetCollecion = [];
            this.form.select('.fieldset').each(function(fieldset) {
                this.fieldsetCollecion.push(fieldset);
            }, this);
        }
        return this.fieldsetCollecion;
    },
    
    /**
     * Collect form elements 
     * @param {Element} parent The starting node
     * @param {boolean} inputsOnly Collect only input elements
     * @return {array}
     */
    collectElements: function(parent, inputsOnly) {
        if (!parent || typeof parent == 'undefined') {
            parent = this.form;
        }
        var elements = [];
        if (inputsOnly) {
            elements = Form.getInputs(parent);
        }
        else {
            elements = Form.getElements(parent);
        }
        return elements;
    },
    
    /**
     * Toggle form visibility
     */
    toggle: function() {
        this._toggleElement(this.form);
    },
    
    /**
     * Toggle element visibility
     * @protected
     * @param {Element} element
     */
    _toggleElement: function(element) {
        if (!element || typeof element == "undefined") {
            return;
        }
        element.toggleClassName('no-display');
    },
    
    /**
     * Checks element visibility.
     * If element param is not passed it will check the main form block visibility
     * @param {Element} element to check
     * @return {boolean}
     */
    visible: function(element) {
        if (!element || typeof element != "object") {
            element = this.form;
        }
        return element.visible() && !element.hasClassName('no-display');
    },
    
    /**
     * Toggle compare dates block
     */
    toggleCompare: function() {
        this._toggleElement(this.getFieldset('compare-fieldset'));
    },
    
    /**
     * Find fieldset by ID part
     * @param {string} idPart unique part of htm ID attribute
     * @return {Element}
     */
    getFieldset: function(idPart) {
        var fieldset = null;
        this.getFieldsets().each(function(iterator){
            if (iterator.id.sub(this.getElementIdPrefix(), '') == idPart) {
                fieldset = iterator;
            }
        }, this)
        return fieldset;
    },
    
    /**
     * Submit form elements
     */
    submitForm: function() {
        var elements = [];
        var fieldSets = this.getFieldsets();
        fieldSets.each(function(fieldset){
            if (this.visible(fieldset)) {
                elements.push({
                    fieldset: fieldset.id.sub(this.getElementIdPrefix(), ''),
                    elements: this.collectElements(fieldset, true)
                });
            }
        }, this);
        
        if(varienGlobalEvents){
            varienGlobalEvents.fireEvent('xreports_filter_form_change', {formElements:elements});
            varienGlobalEvents.fireEvent('xreports_filter_form_submit');
        }
    }
}
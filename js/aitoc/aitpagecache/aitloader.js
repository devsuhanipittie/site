var aitpagecache_Loader = Class.create({
    isDataLoaded: false,    
    data: null,
    config : {
        blockClass: 'aitoc-aitpagecache-loadable-block',
        loadingEffectClass: 'aitoc-aitpagecache-loading-effect',
        disabledCacheBlocks: [],
        noCacheFlag: 'noMagentoBoosterCache'
    },
    initialize: function(config) {
        Object.extend(this.config, config);
        document.observe('dom:loaded', this.onDomLoaded.bind(this));    
    },
    onDomLoaded: function() {        
        this.process();
    },
    read_cookie: function(key)
    {
        var result;
        return (result = new RegExp('(?:^|; )' + encodeURIComponent(key) + '=([^;]*)').exec(document.cookie)) ? (result[1]) : null;
    },
    getLoadLevel: function()
    {
        return this.read_cookie('aitloadmon_loadlevel');
    },
    process: function() {
        if (!$$('.' + this.config.blockClass).size()) {
            return;
        }

        if(this.config.disableDynamicBlocks && (this.getLoadLevel() >= this.config.disableDynamicBlocks))
        {
            if(this.config.showPlaceholder)
            {
                this.config.disabledCacheBlocks.each(function (blockId) {
                    this.placeholdBlock(this.getPageCacheBlockId(blockId),this.config.placeholderText)
                }, this);
            }
            else
            {
                this.config.disabledCacheBlocks.each(function (blockId) {
                    this.hideBlock(this.getPageCacheBlockId(blockId))
                }, this);
            }
            return;
        }


        this.config.disabledCacheBlocks.each(function (blockId) {
            this.addLoadingEffect(this.getPageCacheBlockId(blockId))
        }, this);
            
        new Ajax.Request(this.getNoCacheUrl(this.config.url, this.config.noCacheFlag), {
            method: 'GET',
            onSuccess: function(transport) {
                
                var cntr = new Element('div');
                Element.extend(cntr);                
                cntr.innerHTML = transport.responseText;                                            
                
                this.config.disabledCacheBlocks.each(function (blockId) 
                {            
                    var blockArr = $$('#' + this.getPageCacheBlockId(blockId));
                    var cacheBlockId = this.getPageCacheBlockId(blockId);
                    if (blockArr)
                    {    
                        for(i = 0; i < blockArr.size(); i++)
                        {
                            blockArr[i].replace(cntr.down('#' + cacheBlockId, i).innerHTML);
                        }; 
                        this.removeLoadingEffects(cacheBlockId);                                                      
                    }                                                        
                }, this);
            }.bind(this),
            onComplete: function(transport) {
                this.config.disabledCacheBlocks.each(function (blockId) {
                this.removeLoadingEffects(this.getPageCacheBlockId(blockId));
                }, this);                
            }
        });        
    },
    addLoadingEffect: function(id)
    {
        var cntrArr = $$('#' + id);    
        
        if (!cntrArr)
        {            
            return;
        }
        cntrArr.each(function(cntr)
        {
            if(typeof(cntr.down()) != undefined && cntr.down() != null)
            {
                var cntrChild = cntr.down();
            }
            else
            {
                var cntrChild = cntr;
            }

            var loadingEffect = new Element('div', {
                'class': this.config.loadingEffectClass,
                'id': this.getLoadingEffectBlockId(id)
            }).setStyle({
                'width': cntrChild.getWidth() + 'px',
                'height': cntrChild.getHeight() + 'px',
                'left': this.getLeftPos(cntr) + 'px',
                'top': this.getTopPos(cntr) + 'px'
            });
            $$('body').first().appendChild(loadingEffect);            
        },this); 

    },
    hideBlock: function(id)
    {
        if($(id))
        {
            $(id).hide();
        }
    },
    placeholdBlock: function(id,placeholderText)
    {
        if($(id))
        {
            $(id).innerHTML = '<div>'+placeholderText+'</div>';
            $(id).setStyle({visibility:'visible'});
        }
    },
    removeLoadingEffects: function(id)
    {
        var loadingEffectBlocks = $$('#' + this.getLoadingEffectBlockId(id));             
        loadingEffectBlocks.each(
        function(block)
        {    
            block.remove();        
        },this);        
    },
    getLoadingEffectBlockId: function(id)
    {        
        return this.config.loadingEffectClass + '-' + id;
    },
    getPageCacheBlockId: function(id)
    {
        return this.config.blockClass + '-' + id;
    },
    getLeftPos: function(element)
    {
        var valueL = 0;
        try
        {
            do
            {
                valueL += element.offsetLeft || 0;
                element = element.offsetParent;
            } while (element);
        }
        catch( ex ) {            
    }
    return valueL;
    },    
    getTopPos: function(element)
    {
        var valueT = 0;
        try
        {
            do
            {
                valueT += element.offsetTop || 0;
                element = element.offsetParent;
            } while (element);
        }
        catch( ex ) {
    }
    return valueT;
    },
    getNoCacheUrl: function(url, flag)
    {
        var sign = '?';
        if (url.indexOf('?') > -1)
        {
            sign = '&';
        }
        
        return url + sign + flag;
    }
});
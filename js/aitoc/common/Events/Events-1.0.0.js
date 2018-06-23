/**
 * AITOC's common library for dispatching
 * element-independent events.
 *
 * This lib should NOT be modified under any circumstances.
 * Any new versions of this lib should be placed in a separate file.
 *
 * @version 1.0.0
 */
var Aitoc_Common_Events =
{
    /**
     * observers are stored like
     * {
     *     eventName: [
     *         observer1Name: observer1callback},
     *         observer2Name: observer2callback},
     *         observer3Name: observer3callback}
     *     ]
     * }
     */
    observers: {},

    /**
     * Add an observer for a particular event
     *
     * Warning! This method does NOT check incoming
     * observers for duplication.
     *
     * @param eventName string
     * @param callback function
     */
    addObserver: function ( eventName, callback )
    {
        // create new event area if event area for this event does not exit
        if (typeof this.observers[eventName] == 'undefined') {
            this.observers[eventName] = [];
        }
        this.observers[eventName].push(callback);
    },

    /**
     * Dispatch event through related observers if there are any
     *
     * @param eventName string
     * @param params Object [optional]
     */
    dispatch: function ( eventName )
    {
        // if there are no passed params then we set them by default to an empty object
        var params = (arguments.length > 1) ? arguments[1] : {} ;

        if (typeof this.observers[eventName] != 'undefined') {
            this.observers[eventName].each(function(callback){
                try {
                    callback(params);
                } catch (err) {
                    throw err;
                }
            });
        }
    },

    /**
     * Remove observer from a particular event.
     *
     * Warning! Observer should refer to an exact
     * binded function so ensure to store a reference
     * while adding an observer. For more info see
     * http://api.prototypejs.org/dom/Event/stopObserving/
     *
     * @param eventName string
     * @param callback function
     */
    stopObserver: function ( eventName, callback )
    {
        if (typeof this.observers[eventName] == 'undefined') {
            this.observers[eventName] = this.observers[eventName].without(callback);
        }
    }
};
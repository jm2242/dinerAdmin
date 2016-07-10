/**
 * Created by jonathanmares on 7/9/16.
 */

Template.submittedOrders.helpers({
    getSubmittedOrders: function () {
      return submittedOrders.find({});
    },

    settings: function () {
        const tableSettingsObject = {
            fields: [{key: 'customerName', label: 'Customer Name'},
                {key: 'customerLocation',label: 'Customer Location'}]
        };
        return tableSettingsObject;
    }

});
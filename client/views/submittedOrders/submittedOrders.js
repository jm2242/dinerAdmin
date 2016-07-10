/**
 * Created by jonathanmares on 7/9/16.
 */


Template.submittedOrders.onRendered(function () {
    const numberOfOrders = submittedOrders.find({}).count();
    Session.set("numberOfOrders", numberOfOrders);
});

Template.submittedOrders.helpers({
    // get the submitted orders. reactive function
    getSubmittedOrders: function () {

        return submittedOrders.find({});
    },

    settings: function () {
        const tableSettingsObject = {
            fields: [{key: 'customerName', label: 'Customer Name'},
                {key: 'customerLocation',label: 'Customer Address'},
                {key:'meal', label: 'Meal'},
                {key:'orderMethod',label:'Order Method'},
                {key:'delivered',label:'Delivered'}],
            showFilter: false
        };
        return tableSettingsObject;
    },

    numberOfOrders: function () {
        const numberOfOrders = submittedOrders.find({}).count();
        if (numberOfOrders >  Session.get("numberOfOrders")) {
            sAlert.info('You have received a new order!',{position:'top',effect:'jelly'});
        }
        return numberOfOrders;

    }

});
# item_list

class Wallet.Views.Item extends Backbone.Marionette.ItemView

    model: Wallet.Views.Item
    tagName: "li"
    className: "item-view"

    events:
        "click": "onClick"
    
    render: () ->
        template = _.template($('#template-item').html(), model: @model)
        this.$el.html(template)
        return this

    onClick: () ->
        id = @model.get("id")
        Wallet.router.navigate("item/#{id}", trigger: true)

class Wallet.Views.ItemCollection extends Backbone.Marionette.CollectionView
    itemView: Wallet.Views.Item
    tagName: "ul"
    className: "row"

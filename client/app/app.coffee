# app.js

# Namespace
Wallet = new Backbone.Marionette.Application()
Wallet.Models = {}
Wallet.Views = {}
Wallet.Data ||= {}

Wallet.controller = null
Wallet.router = null
Wallet.Data.items = null

# Regions
Wallet.addRegions(
    rgNavigation: "#navigation"
    rgContent: "#content"
)

Marionette.Region.prototype.open = (view) ->
    this.$el.hide()
    this.$el.html(view.el)
    this.$el.fadeIn("slow")

# Initializer
Wallet.addInitializer((options) ->
    Wallet.Data.items = new Wallet.Models.ItemCollection()

    # Test Data

    # End Test Data

    Wallet.controller = new Wallet.MainController()
    Wallet.router = new Wallet.MainRouter(controller: Wallet.controller)

    Backbone.history.start()
)

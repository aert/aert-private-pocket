# Wallet.Extensions.View

class Wallet.MainController extends Backbone.Marionette.Controller

    initialize: () ->
        @currentPage = null

        @modelNavigation = new Wallet.Models.Navigation()
        @viewNavigation = new Wallet.Views.Navigation(@modelNavigation)

        Wallet.rgNavigation.show(@viewNavigation)

    # -- Views ----------------------------------------------------------------
    showIndex: () ->
        view = new Wallet.Views.ItemCollection(collection: Wallet.Data.items)
        this.gotoPage(view, 'nav-index')

    # -- Private Methods ------------------------------------------------------
    gotoPage: (view, navId) ->
        Wallet.rgContent.show(view)
        @currentPage = view

        @modelNavigation.set({selectedId: navId})

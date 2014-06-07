# navigationModel

class Wallet.Models.Navigation extends Backbone.Model

    initialize: () ->
        #selectedId
        this.setNavIndex()

    getFlagActive: (id) ->
        if id == this.get('selectedId')
            return "active"
        return ""

    setNavIndex: () ->
        this.set(selectedId: "nav-index")

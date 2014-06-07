# 

class Wallet.Models.Item extends Backbone.Model

    defaults:
        authorId: 0
        slug: ""
        title: ""
        originalUrl: ""
        shortDesc: ""
        content: ""
        contentType: ""

class Wallet.Models.ItemCollection extends Backbone.Collection
    model: Wallet.Models.Item




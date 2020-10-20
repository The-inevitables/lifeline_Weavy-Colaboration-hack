$(function () {
alert()
{}
    var weavy = new Weavy({
        jwt: generateJWT("unique-username", "user@example.com")
    });

    // get or create the global space
    var space = weavy.space({key: "global" });

    // get or create the messenger app
    var messengerApp = space.app({key: "main-messenger", type: "messenger", container: "#weavy-messenger-container" });

    // toggle messenger
    $(document).on("click", ".toggle-messenger", function () {
        $(this).hasClass("show") ? $(this).removeClass("show") : $(this).addClass("show");
    });

    // hook up to the badge event to indicate if user has unread conversations
    weavy.on("badge", function (e, data) {
        data.conversations === 0 ? $(".toggle-messenger").removeClass("has-unread") : $(".toggle-messenger").addClass("has-unread");
    });

    // customer overview "detection"
    var customerId = $(".section-customer").data("customer-id");

    if (customerId && customerId.length) {
        // add the files app for this context
        space.app({key: "files-" + customerId, type: "files", container: "#weavy-files-container"});
    } else {
        // we are not on the customer overview page - do nothing more
    }
});

// IMPORTANT! 
// The token should never by created with client side scripting since that will risk exposing the secret string. This should only be regarded as an proof of concept.
function generateJWT(sub, email) {
    var secretString = "only_for_demo_purposes";

    // token generation courtesy of https://github.com/kjur/jsrsasign
    // see https://jwt.io/ for a available libraries

    // token valid for 2 hours
    var dateSoon = new Date();
    dateSoon.setHours(dateSoon.getHours() + 2);

    // return the signed token
    return KJUR.jws.JWS.sign(null, { alg: "HS256", typ: "JWT" }, { iss: "GripCMS", sub: sub, email: email, exp: dateSoon.getTime() / 1000 }, secretString);
}
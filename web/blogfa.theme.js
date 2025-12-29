// ===== Blogfa comments helper (کپی شده از theme.1.2.js و سبک شده) =====
var __cmt_updated = false;

function updatecomments() {
    var _cmts = [];
    var cnt = 0;
    var result = "";
    var url = "";
    var postid = 0;

    if (typeof cmt_blogid !== "string" || cmt_blogid === "")
        return;

    if (!Array.isArray(cmt_caption) || cmt_caption.length < 4) {
        cmt_caption = ["نظرات", "نظر بدهيد", "يک نظر", "نظر"];
    }

    try {
        if (typeof window.BlogComments !== "undefined" &&
            window.BlogComments &&
            window.BlogComments.length) {

            for (var c = 0; c < window.BlogComments.length; c += 2) {
                _cmts["_" + window.BlogComments[c]] = window.BlogComments[c + 1];
            }
        }

        var allelements = document.getElementsByTagName("*");
        for (var i = 0; i < allelements.length; i++) {
            postid = allelements[i].getAttribute("comment-for");
            if (postid != null) {
                postid = parseInt(postid, 10);

                if (_cmts["_" + postid] != null)
                    cnt = _cmts["_" + postid];
                else
                    cnt = -1;

                if (cnt === -1)
                    result = cmt_caption[0];
                else if (cnt === 0)
                    result = cmt_caption[1];
                else if (cnt === 1)
                    result = cmt_caption[2];
                else if (cnt > 1)
                    result = cnt + " " + cmt_caption[3];

                url = "/comments/?blogid=" + cmt_blogid + "&postid=" + postid;

                if (getwindowwidth() > 700) {
                    result =
                        "<a href=\"javascript:void(0)\" onclick=\"javascript:window.open('" +
                        url +
                        "','blogfa_comments','status=yes,scrollbars=yes,toolbar=no,menubar=no,location=no ,width=500px,height=500px')\">" +
                        result + " </a>";
                } else {
                    result = "<a href=\"" + url + "\">" + result + " </a>";
                }

                allelements[i].innerHTML = result;
            }
        }
    } catch (e) {}

    __cmt_updated = true;
}

function openlinks() {
    if (getwindowwidth() < 700)
        return true;
    window.open(
        '/links',
        'blogfa_ld',
        'status=yes,scrollbars=yes,toolbar=no,menubar=no,location=no ,width=500px,height=500px'
    );
    return false;
}

function getwindowwidth() {
    return window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
}

if (window.addEventListener)
    window.addEventListener("load", updatecomments);
else if (window.attachEvent)
    window.attachEvent("onload", updatecomments);

setTimeout(function () {
    if (__cmt_updated === false) {
        try { updatecomments(); } catch (e) {}
    }
}, 6000);

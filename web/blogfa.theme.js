// ===== Blogfa comments helper moved to GitHub =====

// از مقدار قبلی استفاده کن اگه ست شده بود
var cmt_caption = Array.isArray(window.cmt_caption)
    ? window.cmt_caption
    : ["نظرات", "نظر بدهيد", "يک نظر", "نظر"];

var cmt_blogid = (typeof window.cmt_blogid === "string") ? window.cmt_blogid : "";
var __cmt_updated = false;

function updatecomments() {
    var _cmts = [];
    var cnt = 0;
    var result = "";
    var url = "";
    var postid = 0;

    if (cmt_blogid === "")
        return;

    try {
        // فقط اگه BlogComments وجود داره، مپش کن – ولی اگه نبود، بازم لینک درست بساز
        if (typeof window.BlogComments !== "undefined" && window.BlogComments && window.BlogComments.length) {
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
                    result = cmt_caption[0];                    // "نظرات"
                else if (cnt === 0)
                    result = cmt_caption[1];                    // "نظر بدهيد"
                else if (cnt === 1)
                    result = cmt_caption[2];                    // "يک نظر"
                else if (cnt > 1)
                    result = cnt + " " + cmt_caption[3];        // "X نظر"

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
    } catch (e) {
        // نذار صفحه بترکه
    }

    __cmt_updated = true;
}

// باز کردن آرشیو پیوندهای روزانه
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

// عرض پنجره
function getwindowwidth() {
    return window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
}

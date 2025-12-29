var __cmt_updated = false;

// رفرش کردن متن لینک نظرات برای هر پست
function updatecomments() {
    var _cmts = [];
    var cnt = 0;
    var result = "";
    var url = "";
    var postid = 0;

    if (!window.cmt_blogid) return;

    try {
        if (typeof BlogComments === "undefined" || !BlogComments.length) {
            return;
        }

        for (var c = 0; c < BlogComments.length; c += 2) {
            _cmts["_" + BlogComments[c]] = BlogComments[c + 1];
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

                if (cnt == -1) result = cmt_caption[0];
                else if (cnt == 0) result = cmt_caption[1];
                else if (cnt == 1) result = cmt_caption[2];
                else if (cnt > 1) result = cnt + " " + cmt_caption[3];

                url = "/comments/?blogid=" + cmt_blogid + "&postid=" + postid;

                if (getwindowwidth() > 700)
                    result =
                        "<a href=\"javascript:void(0)\" onclick=\"javascript:window.open('" +
                        url +
                        "','blogfa_comments','status=yes,scrollbars=yes,toolbar=no,menubar=no,location=no ,width=500px,height=500px')\" >" +
                        result + " </a>";
                else
                    result = "<a href=\"" + url + "\"  >" + result + " </a>";

                allelements[i].innerHTML = result;
            }
        }
    } catch (e) {}

    __cmt_updated = true;
}

// باز کردن آرشیو پیوندها
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

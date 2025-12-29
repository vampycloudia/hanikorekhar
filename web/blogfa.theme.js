// ===== Blogfa comments helper (نسخه تقویت‌شده) =====
var __cmt_updated = false;

(function () {

    // اگر نبودن، مقدار پیش‌فرض براشون بذار
    if (!Array.isArray(window.cmt_caption) || window.cmt_caption.length < 4) {
        window.cmt_caption = ["نظرات", "نظر بدهيد", "يک نظر", "نظر"];
    }

    // اگر cmt_blogid خالیه، سعی کن از متغیرهای دیگه بگیری، وگرنه بی‌خیال شو
    if (typeof window.cmt_blogid === "undefined" || window.cmt_blogid === null || window.cmt_blogid === "") {
        if (typeof window.BlogID !== "undefined" && window.BlogID !== null) {
            window.cmt_blogid = String(window.BlogID);
        } else {
            // بدون blogid اصلاً نمی‌شه لینک کامنت ساخت
            return;
        }
    } else {
        window.cmt_blogid = String(window.cmt_blogid);
    }

    function updatecomments() {
        var _cmts = {};      // بهتره آبجکت باشه
        var cnt = 0;
        var result = "";
        var url = "";
        var postid = 0;

        try {
            // اگر BlogComments هست، نگاشت پست → تعداد کامنت بساز
            if (typeof window.BlogComments !== "undefined" &&
                window.BlogComments &&
                window.BlogComments.length) {

                for (var c = 0; c < window.BlogComments.length; c += 2) {
                    var pid = window.BlogComments[c];
                    var num = window.BlogComments[c + 1];
                    _cmts["_" + pid] = num;
                }
            }

            var allelements = document.getElementsByTagName("*");
            for (var i = 0; i < allelements.length; i++) {
                postid = allelements[i].getAttribute("comment-for");
                if (postid != null) {
                    postid = parseInt(postid, 10);
                    if (isNaN(postid)) continue;

                    if (_cmts["_" + postid] != null)
                        cnt = _cmts["_" + postid];
                    else
                        cnt = -1;

                    if (cnt === -1)
                        result = window.cmt_caption[0];          // "نظرات"
                    else if (cnt === 0)
                        result = window.cmt_caption[1];          // "نظر بدهيد"
                    else if (cnt === 1)
                        result = window.cmt_caption[2];          // "يک نظر"
                    else if (cnt > 1)
                        result = cnt + " " + window.cmt_caption[3];  // "X نظر"

                    url = "/comments/?blogid=" + window.cmt_blogid + "&postid=" + postid;

                    if (getwindowwidth() > 700) {
                        result =
                            "<a href=\"javascript:void(0)\" onclick=\"window.open('" +
                            url +
                            "','blogfa_comments','status=yes,scrollbars=yes,toolbar=no,menubar=no,location=no,width=500,height=500')\">" +
                            result + "</a>";
                    } else {
                        result = "<a href=\"" + url + "\">" + result + "</a>";
                    }

                    allelements[i].innerHTML = result;
                }
            }
        } catch (e) {
            // نذار صفحه بترکه
            // console.log("updatecomments error:", e);
        }

        __cmt_updated = true;
    }

    function openlinks() {
        if (getwindowwidth() < 700)
            return true;
        window.open(
            '/links',
            'blogfa_ld',
            'status=yes,scrollbars=yes,toolbar=no,menubar=no,location=no,width=500,height=500'
        );
        return false;
    }

    function getwindowwidth() {
        return window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth || 0;
    }

    // اکسپورت به گلوبال (مثل نسخه رسمی)
    window.updatecomments = updatecomments;
    window.openlinks      = openlinks;
    window.getwindowwidth = getwindowwidth;

    // اگر این فایل رو مستقیم تو قالب لود می‌کنی (نه با نوا)، اینا به‌دردت می‌خوره:
    if (window.addEventListener)
        window.addEventListener("load", updatecomments);
    else if (window.attachEvent)
        window.attachEvent("onload", updatecomments);

    // بک‌آپ: اگه به هر دلیل صدا نشد، بعد ۶ ثانیه خودش یک‌بار دیگه امتحان می‌کنه
    setTimeout(function () {
        if (__cmt_updated === false) {
            try { updatecomments(); } catch (e) {}
        }
    }, 6000);

})();

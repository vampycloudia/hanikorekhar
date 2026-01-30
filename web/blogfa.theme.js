// ===== Blogfa comments helper – Nova edition =====
var __cmt_updated = false;
var __cmt_watch_timer = null;

(function (w, d) {

    // کپشن‌های پیش‌فرض، اگر از بیرون ست نشده باشن
    if (!Array.isArray(w.cmt_caption) || w.cmt_caption.length < 4) {
        w.cmt_caption = ["نظرات", "نظر بدهيد", "يک نظر", "نظر"];
    }

    // Blog ID:
    // ۱) اگر تو قالب دستی cmt_blogid ست شده، همونو بگیر
    // ۲) اگر نه، از BlogID خود بلاگفا استفاده کن
    if (typeof w.cmt_blogid === "undefined" || w.cmt_blogid === null || w.cmt_blogid === "") {
        if (typeof w.BlogID !== "undefined" && w.BlogID !== null && w.BlogID !== "") {
            w.cmt_blogid = String(w.BlogID);
        } else {
            // بدون blogid نمی‌شه لینک درست کرد
            return;
        }
    } else {
        w.cmt_blogid = String(w.cmt_blogid);
    }

    function getwindowwidth() {
        return w.innerWidth || d.documentElement.clientWidth || d.body.clientWidth || 0;
    }

    function updatecomments() {
        var map = {}; // postid → count
        var cnt = 0;
        var result = "";
        var url = "";
        var postid = 0;

        try {
            // BlogComments آرایه‌ایه مثل [postId, count, postId, count, ...]
            if (typeof w.BlogComments !== "undefined" &&
                w.BlogComments &&
                w.BlogComments.length) {

                for (var c = 0; c < w.BlogComments.length; c += 2) {
                    var pid = w.BlogComments[c];
                    var num = w.BlogComments[c + 1];
                    map["_" + pid] = num;
                }
            }

            var allelements = d.getElementsByTagName("*");
            for (var i = 0; i < allelements.length; i++) {
                postid = allelements[i].getAttribute("comment-for");
                if (postid == null) continue;

                postid = parseInt(postid, 10);
                if (isNaN(postid)) continue;

                if (map["_" + postid] != null) {
                    cnt = map["_" + postid];
                } else {
                    cnt = -1;
                }

                if (cnt === -1)
                    result = w.cmt_caption[0];        // "نظرات"
                else if (cnt === 0)
                    result = w.cmt_caption[1];        // "نظر بدهيد"
                else if (cnt === 1)
                    result = w.cmt_caption[2];        // "يک نظر"
                else if (cnt > 1)
                    result = cnt + " " + w.cmt_caption[3];

                url = "/comments/?blogid=" + w.cmt_blogid + "&postid=" + postid;

                // دسکتاپ: پاپ‌آپ
                if (getwindowwidth() > 700) {
                    allelements[i].innerHTML =
                        "<a href=\"javascript:void(0)\" onclick=\"window.open('" +
                        url +
                        "','blogfa_comments','status=yes,scrollbars=yes,toolbar=no,menubar=no,location=no,width=500,height=500')\">" +
                        result + "</a>";
                } else {
                    // موبایل: لینک مستقیم
                    allelements[i].innerHTML = "<a href=\"" + url + "\">" + result + "</a>";
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
        w.open(
            '/links',
            'blogfa_ld',
            'status=yes,scrollbars=yes,toolbar=no,menubar=no,location=no,width=500,height=500'
        );
        return false;
    }

    function startCommentWatcher() {
        // فقط یه بار
        if (__cmt_watch_timer) return;
        __cmt_watch_timer = w.setInterval(function () {
            try {
                // اگر تا الان یه بار آپدیت شده، دوباره هم می‌تونه آپدیت بشه
                updatecomments();
            } catch (e) { }
        }, 15000); // هر ۱۵ ثانیه – می‌تونی کمتر/بیشتر کنی
    }

    // اکسپورت به گلوبال
    w.updatecomments = updatecomments;
    w.openlinks      = openlinks;
    w.getwindowwidth = getwindowwidth;

    // روی لود صفحه
    if (w.addEventListener) {
        w.addEventListener("load", function () {
            try { updatecomments(); } catch (e) { }
            startCommentWatcher();
        });
    } else if (w.attachEvent) {
        w.attachEvent("onload", function () {
            try { updatecomments(); } catch (e) { }
            startCommentWatcher();
        });
    }

    // بک‌آپ: اگر به هر دلیل رو لود صدا نشد
    w.setTimeout(function () {
        if (__cmt_updated === false) {
            try { updatecomments(); } catch (e) { }
        }
        startCommentWatcher();
    }, 6000);

})(window, document);

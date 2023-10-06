const disabledKeys = ["u", "I"];

const showAlert = e => {
    e.preventDefault();
    return alert("Your are a kid man....!");
}

document.addEventListener("contextmenu", e => {
    showAlert(e);
});

document.addEventListener("keydown", e => {
    if (e.ctrlKey && disabledKeys.includes(e.key) || e.key === "F12") {
        showAlert(e);
    }
});


const showStickyAd = () => {
    const stickyBtmAd = document.querySelector(".sticky-bottom-ad");
    const closeBtn = stickyBtmAd.querySelector(".close-btn");
    const googleAd = stickyBtmAd.querySelector(".adsbygoogle");
    const isAdLoaded = googleAd?.getAttribute("data-ad-status");
    const isStickyHidden = stickyBtmAd.classList.contains("hide");
    if(window.innerWidth < 700 || isStickyHidden || !isAdLoaded || isAdLoaded === "unfilled") return;

    stickyBtmAd.classList.add("show");

    const hideStickyAd = () => {
        stickyBtmAd.classList.remove("show");
    }

    closeBtn.addEventListener("click", hideStickyAd);
}

const insertStickyAd = () => {
    const stickyBtmAd = document.createElement("div");
    stickyBtmAd.classList.add("sticky-bottom-ad");
    stickyBtmAd.innerHTML = `<div class="ad-body">
                                <div class="close-btn">
                                    <svg viewBox="0 0 48 48" fill="#333"><path d="M38 12.83L35.17 10 24 21.17 12.83 10 10 12.83 21.17 24 10 35.17 12.83 38 24 26.83 35.17 38 38 35.17 26.83 24z"></path><path d="M0 0h48v48H0z" fill="none"></path></svg>
                                </div>
                                <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-2279718596603414"
                                    crossorigin="anonymous"></script>
                                <!-- Demo Sticky Ad -->
                                <ins class="adsbygoogle"
                                    style="display:inline-block;width:728px;height:90px"
                                    data-ad-client="ca-pub-2279718596603414"
                                    data-ad-slot="6378274075">
                                </ins>
                                <script>
                                  (adsbygoogle = window.adsbygoogle || []).push({});
                                </script>
                            </div>`;
    document.body.appendChild(stickyBtmAd);
    (adsbygoogle = window.adsbygoogle || []).push({});
    setTimeout(() => showStickyAd(), 3000);
}


const insertLinkAndScript = () => {
    const isCustomLinkExist = document.querySelector('link[href="Content/custom-styles.css"]');
    if(!isCustomLinkExist) {
        const customLink = document.createElement("link");
        customLink.rel = "stylesheet";
        customLink.href = "custom-styles.css";
    
        document.head.appendChild(customLink);
    }
    
    const favIconLink = document.createElement("link");
    favIconLink.rel = "icon";
    favIconLink.type = "image/png";
    favIconLink.href = "../favicon.png";
    document.head.appendChild(favIconLink);

    removePrevBtnStyles();
    createDownloadBtn();
    
    adScript.onload = () => {
        // insertVignetteAd();
        insertStickyAd();
    }
}

insertLinkAndScript();
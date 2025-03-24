(function extension() {
    const { Platform } = Spicetify;
    if (!Platform) {
        setTimeout(extension, 300);
        return;
    }
    function handleHotkeys(event) {
        if ((event.ctrlKey || event.metaKey) && event.key === 'z') {
            event.preventDefault();
            document.querySelector(".Button-sc-1dqy6lx-0.Button-buttonTertiary-medium-iconOnly-useBrowserDefaultFocusStyle.e-9640-overflow-wrap-anywhere.e-9640-button-tertiary--icon-only.link-subtle.main-globalNav-navLink.main-globalNav-link-icon.custom-navlink").click();
        }
    }
    document.addEventListener('keydown', handleHotkeys);
})();

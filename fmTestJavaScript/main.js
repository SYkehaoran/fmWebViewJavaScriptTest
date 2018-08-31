(function(){
    console.log("ProgectInit");
    showShare();
    setupWebViewJavascriptBridge(function(bridge){
                              
                                 bridge.registerHandler('getScreenHeight', function(data, responseCallback) {
                                                        alert('Screen Height ' + data)
                                                        });
                                
                                 
                                 });
 })();
 
 function showShare(){
    utils.showShare("weiChat");
}
 
 function setupWebViewJavascriptBridge(callback) {
    if (window.WebViewJavascriptBridge) { return callback(WebViewJavascriptBridge); }
    if (window.WVJBCallbacks) { return window.WVJBCallbacks.push(callback); }
    window.WVJBCallbacks = [callback];
    var WVJBIframe = document.createElement('iframe');
    WVJBIframe.style.display = 'none';
    WVJBIframe.src = 'https://__bridge_loaded__';
    document.documentElement.appendChild(WVJBIframe);
    setTimeout(function() { document.documentElement.removeChild(WVJBIframe) }, 0)
}


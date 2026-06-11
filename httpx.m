1.httpx -l 123.txt


2.httpx -l 123.txt -sc -title -td


3.httpx -l 123.txt -sc -title -td -o live_targets.txt


4.httpx -l 123.txt -sc -title -td -rt -server -ip -cdn -asn -web-server -location


5.httpx -l 123.txt -path "/robots.txt,/sitemap.xml" -sc


6.cat 123.txt | httpx -sc -title


7.httpx -l 123.txt -ports 80,443,8080,8000,8888 -sc -title


8.httpx -l 123.txt -ss


9.httpx -u xyz.com


10.httpx -l 123.txt


11.httpx -u xyz.com -sc -title -rt -ip


12.httpx -l 123.txt -sc -title -rt -ip -server


13.httpx -u xyz.com -td -asn -cdn


14.httpx -l 123.txt -td -asn -cdn -jarm


15.httpx -u xyz.com -o result.txt


16.httpx -l 123.txt -o result.txt


17.httpx -l 123.txt -j -o result.json


18.httpx -l 123.txt -csv -o result.csv


19.httpx -l 123.txt -sr -or



20.httpx -l 123.txt -mc 200,201



21.httpx -l 123.txt -fc 403,404



22.httpx -l 123.txt -ms "admin"




23.httpx -l 123.txt -fs "error"



24.httpx -l 123.txt -ml 1000-2000


25.httpx -l 123.txt -mdc "len(body) > 100 && status_code == 200"



26.httpx -u xyz.com -er "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+"



27.httpx -l 123.txt -ep ipv4


28.httpx -l 123.txt -ep email



29.httpx -l 123.txt -ss


30.httpx -l 123.txt -ss -system-chrome



31.httpx -l 123.txt -ss -ho "--window-size=1920,1080"


32.httpx -l 123.txt -ss -esb


33.httpx -u xyz.com -p 80,443,8080,8443


34.httpx -l 123.txt -p 80,443,8000-8100


35.httpx -u xyz.com -path "/admin,/api/v1,/robots.txt


36.httpx -l 123.txt -path "/backup.zip,.git/config" -sc


37.httpx -u xyz.com -H "X-Custom-Header: test" -H "User-Agent: MyScanner"


38.httpx -l 123.txt -random-agent



39.httpx -u xyz.com -method POST -H "Content-Type: application/json" -d '{"key":"val"}'


40.httpx -l 123.txt -http-proxy http://127.0.0.1:8080



41.httpx -l 123.txt -t 100


42.httpx -l 123.txt -rl 50


43.httpx -l 123.txt -rlm 1000


44.httpx -l 123.txt -t 200 -rl 100 -s


45.httpx -u xyz.com -debug


46.httpx -l 123.txt -tls-prob


46.httpx -l 123.txt -vhost


47.httpx -l 123.txt -follow-redirects


48.httpx -l 123.txt -resume


49.httpx -l 123.txt -sc -title -td -rt -ip -server -o full_scan.txt


50.httpx -l 123.txt -mc 200 -title -ss -json -o live_sites.json


51.cat 123.txt | httpx -sc -title -fc 404 -o filtered.txt










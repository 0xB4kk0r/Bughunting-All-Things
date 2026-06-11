1.katana -u https://example.com


2.katana -u https://example.com -d 2 -s "example.com" -sub


3.katana -u https://example.com -o urls.txt


4.katana -u https://example.com -silent

5.katana -list targets.txt


6.katana -u https://spa-example.com -headless

7.katana -u https://example.com/dashboard -H "Cookie: sessionid=abc123"

8.katana -u https://example.com -H "Authorization: Bearer token" -H "X-API-Key: 123"


9.katana -u https://example.com -mr '\.js$'

10.katana -u https://example.com -ps

11.katana -u https://example.com -ps -passive-sources wayback,otx,commoncrawl


12.katana -u https://example.com -c 20 -rl 10


13.katana -u https://example.com -sitemap


14.katana -u https://example.com -field form -store-field-dir output/fields


15.katana -u https://example.com -proxy http://127.0.0.1:8080


16.katana -u https://example.com -silent | httpx -mc 200 -title -tech-detect


16.katana -u https://example.com -silent | nuclei -t cves/ -o vulns.txt


17.katana -u https://example.com -ps -headless -d 3 -o all_urls.txt

18.katana -h                    # full help
katana -list-help            # help for passive sources
katana -headless -h          # headless-specific flags



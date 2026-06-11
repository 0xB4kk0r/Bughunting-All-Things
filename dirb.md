dirb https://example.com


dirb https://example.com -X .php,.txt,.bak


dirb https://example.com -o results.txt


dirb https://example.com -w /path/to/your/custom_list.txt


dirb https://example.com -a "Mozilla/5.0 (Windows NT 10.0; Win64; x64)


dirb https://example.com -z 1000


dirb <URL> <custom_wordlist_path>


dirb <URL> [wordlist] [options]


dirb https://example.com /usr/share/dirb/wordlists/common.txt -a "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36" -z 1000


dirb https://example.com/admin /usr/share/wordlists/dirb/vulns/php.txt -u admin:secure_pass123 -o admin_scan.txt


dirb https://example.com -o full_scan.txt -r -i -N 404 -X .php,.asp,.txt,.zip,.bak,.sql,.log

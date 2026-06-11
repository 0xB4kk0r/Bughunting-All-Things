1.assetfinder example.com


2.assetfinder -subs-only example.com



3.assetfinder -no-resolve example.com


4.assetfinder -t 30 example.com



5.assetfinder -timeout 3 example.com


6.assetfinder -v example.com



7.assetfinder -no-resolve -t 40 -v example.com



8.# 1. Find all subdomains (no IPs) and save to file
assetfinder -subs-only example.com > subs.txt

# 2. Count them
wc -l subs.txt

# 3. Look for specific patterns
grep "admin" subs.txt
grep "dev" subs.txt



9.assetfinder example.com | grep -E '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' | tee resolved.txt



10.assetfinder example.com | awk '{print $2}' | grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' > ips.txt



11.assetfinder -subs-only example.com | anew all-subs.txt


12.# Run assetfinder and other tools, then merge, sort unique
( assetfinder -subs-only example.com; subfinder -d example.com; findomain -t example.com ) | sort -u > all.txt


13.# Collect, resolve, probe, screenshot (using httpx)
assetfinder -subs-only example.com | httpx -silent -sc -title -ip -o results.csv




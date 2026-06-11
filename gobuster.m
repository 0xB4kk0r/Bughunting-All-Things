1.gobuster dir -u https://example.com -w /usr/share/wordlists/dirb/common.txt


2.# Basic directory scan
gobuster dir -u https://example.com -w /usr/share/wordlists/dirb/common.txt

# Search for PHP, HTML, and JS files
gobuster dir -u https://example.com -w wordlist.txt -x php,html,js,txt

# Filter to show only 200 and 403 status codes
gobuster dir -u https://example.com -w wordlist.txt -s 200,403

# Exclude 404 and 403 with cookies and threads
gobuster dir -u http://192.59.195.3 -w /usr/share/wordlists/dirb/common.txt -b 403,404 -c "PHPSESSID=abc123" -t 50

# Recursive scan with extensions
gobuster dir -u https://example.com -w wordlist.txt -x .php,.xml,.txt -r

# Use proxy
gobuster dir -u https://example.com -w wordlist.txt -t 50 --proxy http://127.0.0.1:8080



3.gobuster dns -d example.com -w /usr/share/wordlists/subdomains.txt



4.# Basic subdomain enumeration
gobuster dns -d example.com -w /usr/share/wordlists/subdomains.txt

# Show IP addresses
gobuster dns -d example.com -w /usr/share/wordlists/subdomains.txt -i

# With custom resolver and threads
gobuster dns -d example.com -w subdomains.txt -r 8.8.8.8 -t 100

# Handle wildcard DNS records
gobuster dns -d example.com -w wordlist.txt --wildcard

# Save output to file
gobuster dns -d target.com -w /usr/share/wordlists/dns/subdomains-top1million-5000.txt -t 50 -o dns_result.txt




5.gobuster vhost -u https://example.com -w /usr/share/wordlists/vhosts.txt



6.# Basic vhost enumeration
gobuster vhost -u https://example.com -w /usr/share/wordlists/vhosts.txt

# With threads and output
gobuster vhost -u http://target.com -w vhosts.txt -t 50 -o vhost_result.txt

# Follow redirects
gobuster vhost -u https://example.com -w vhosts.txt -r

# Skip TLS verification
gobuster vhost -u https://example.com -w vhosts.txt -k



7.gobuster fuzz -u https://example.com/FUZZ -w wordlist.txt




8.# Basic fuzzing (FUZZ placeholder)
gobuster fuzz -u http://localhost:8000/FUZZ -w wordlist.txt

# Fuzzing URL parameters
gobuster fuzz -u "https://target.com/?param=FUZZ" -w wordlist.txt

# Fuzzing with headers
gobuster fuzz -u https://example.com -w wordlist.txt -H "X-Custom: FUZZ"





9.

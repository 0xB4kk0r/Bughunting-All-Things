1.arjun -u "http://example.com/page"


2.arjun -u "http://example.com/api" -m POST


3.arjun -u "https://example.com/login" -m POST -d "user=admin"


4.arjun -u "https://api.example.com/v1/user" -m POST --json


5.arjun -u "https://example.com/dashboard" -H "Authorization: Bearer TOKEN" -c "session=abc123"


6.arjun -u "http://example.com/search" -w /path/to/custom.txt


7.arjun -u "http://example.com/admin" -t 10 -d 0.5


8.arjun -u "http://example.com" -T 15

9.arjun -u "http://example.com/page" --include 'utm_*'

10.arjun -f urls.txt

11.arjun --headers "request.txt"

12.arjun -u "http://test.com" -oJ found.json


13.arjun --headers request.txt --passive

14.arjun --headers request.txt --json -m POST -w /usr/share/seclists/Discovery/Web-Content/burp-parameter-names.txt -t 5 -d 0.2 -oJ results.json


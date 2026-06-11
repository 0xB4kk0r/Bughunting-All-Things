1.amass intel -org "Example Inc"


2.amass intel -asn 12345 -ip -src



3.amass intel -whois -d example.com



4.amass intel -email admin@example.com




5.amass intel -org "Example Inc" -sources crtsh




6.amass enum -passive -d example.com -o passive.txt




7.amass enum -active -d example.com -dir ./amass -o active.txt



8.amass enum -active -brute -w /path/to/subdomains.txt -d example.com -dir ./amass




9.amass enum -active -brute -w words.txt -d example.com -alts



10.amass enum -active -d domain1.com -d domain2.com -dir ./amass



11.amass enum -active -include intel.txt -dir ./amass



12.amass db -names -d example.com -dir ./amass




13.amass db -show -d example.com -dir ./amass




14.amass db -domains -dir ./amass



15.amass db -d example.com -dot -dir ./amass -o output.dot


16.amass viz -d3 -dir ./amass -o example.html



17.amass viz -dot -dir ./amass -o graph.dot
dot -Tpng graph.dot -o graph.png



18.amass enum -active -d example.com -dir ./track1


19.amass enum -active -d example.com -dir ./track2


20.amass track -d example.com -dir ./track1 -dir ./track2


21.mkdir -p ~/.config/amass
nano ~/.config/amass/config.ini


22.[output]
dir = /home/user/amass-example


23.amass intel -org "Example Inc" -ip -src -o example_ips.txt


24.amass enum -passive -d example.com -dir /home/user/amass-example -o passive.txt


25.amass enum -active -brute -w /usr/share/amass/wordlists/deepmagic.com.txt \
  -d example.com -dir /home/user/amass-example -o full_enum.txt \
  -ip -src -alts



26.amass db -names -d example.com -dir /home/user/amass-example
amass db -show -d example.com -dir /home/user/amass-example | less



27.amass viz -d3 -dir /home/user/amass-example -o example_map.html



28.amass enum -active -brute -w /usr/share/amass/wordlists/deepmagic.com.txt \
  -d example.com -dir /home/user/amass-week2 -o week2.txt
amass track -d example.com -dir /home/user/amass-example -dir /home/user/amass-week2



29.amass enum -passive -d example.com -o - | httpx -silent




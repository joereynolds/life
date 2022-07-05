# Web hacking checklist

- Check the robots.txt file
    - There could be sensitive urls in there

- Check the `server-status` url for apache (what's the nginx equivalent?)
    - i.e. visit yoururl.com/server-status

- Is there a phpinfo.php file open to anyone? (what other language equivalents are there?)
    - i.e. visit yoururl.com/phpinfo.php


- Check the page source, people are dumb and leave commented out api keys everywhere.

- Run [nikto](https://github.com/sullo/nikto) against the site to find directories
    - ./nikto.pl yourdomain.com

- use `nmap` to find potential ports/subdomains/git repos
    - nmap -v -A yourdomain.com
 
- use `curl` for bruteforcing against 1000's of urls
    - i.e. {util,www}.joereynoldsaudio.com/{admin,wp} will attempt requests on
        - util.joereynoldsaudio.com/admin
        - util.joereynoldsaudio.com/wp
        - www.joereynoldsaudio.com/admin
        - www.joereynoldsaudio.com/wp

- use `ngrep` to perve on unencrypted packages on page requests
    - i.e. `sudo ngrep -q joereynoldsaudio.com`

- F12 tools are your friend
    - Checkout the js files, anything interesting?
    - Any ajax requests being fired off? 
        - Try changing the requests in curl and see what happens.

- Any query strings in the url? mess around with them.
- Anything in sessionStorage, localStorage, localDb etc...?
- xss

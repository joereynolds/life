# Web hacking checklist

- Check the robots.txt file
    - There could be sensitive urls in there

- Check the page source, people are dumb and leave commented out api keys everywhere.

- use `nmap` to find potential ports/subdomains/git repos
 
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

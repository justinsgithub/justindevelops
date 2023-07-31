# GitHub Pages

GitHub Pages Video: [https://youtu.be/oGAk60cUGrw](https://youtu.be/oGAk60cUGrw)

Domain Verification Video: [https://www.youtube.com/watch?v=qleBf7HxPPM](https://www.youtube.com/watch?v=qleBf7HxPPM)

Host your own website for free, with custom domain using GitHub Pages

## Create Website Repo

1. Create a new repo

    - if this is a user site for your GitHub, repo name must be {username}.github.io

2. Decide if you want to publish website in / (root) or /docs

3. Place website files in chosen destination

    - for example create file `docs/index.html` with the following content

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>My GitHub Pages Site</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
  </head>
  <body>
    <h1>My GitHub Pages Site<h1>
  </body>
</html>
```

## Publishing

1. Go to repo settings and go to pages

2. Select branch and folder to publish from

    - folder must be / (root) or /docs

## Setting Custom Domain

1. Go to repo settings, go to pages, go to custom domain, enter desired domain (which you own)

2. Make sure a `CNAME` file is in the publishing folder that contains the domain name you have chosen

3. go to DNS provider (such as google domains) and edit DNS settings so that CNAME points to your GitHub pages url (such as {username}.github.io)

    - such as docs.justin-develops.com points to justinsgithub.github.io

    - if using root domain (such as justin-develops.com), must point A record to GitHub IP addresses

    ```
      185.199.108.153
      185.199.109.153
      185.199.110.153
      185.199.111.153
    ```

    - you should configure WWW subdomain as well if using root domain

    - use this command to check DNS configuration

<div class="termy">

```sh
$ dig www.example.com +nostats +nocomments +nocmd
```
</div>

!!! warning

    - may take a long time for changes with DNS provider to take effect (up to 24 hours)
    - github pages will show an "improperly configured" error until the changes take effect
    - will also take time for github to provision certs after domain check is successful

## Verify Custom Domain

Verify your domain with GitHub for extra security and to prevent a domain takeover whenever your custom domain has any changes taking effect.

1. click profile in top right and click on settings

2. click on "pages" and click "add a domain"

3. enter domain you would like to add and click "Add domain"

4. create a TXT record and enter the host name that GitHub gives you

    - it should look something like below:

    ```
    _github-pages-challenge-{github_username}
    ```

5. enter the data for the TXT record that GitHub gives you

    - it should be random numbers and letters similar to below:

    ```
    bbfb463f444445452f4411558f84z6
    ```

6. give time for you DNS provider changes to take effect, then hit verify

    - can take up to 24 hours, but 30 minutes to 1 hour has been my experience

    - you can run this command to check if your DNS configuration has taken effect

<div class="termy">

```sh
dig _github-pages-challenge-USERNAME.example.com +nostats +nocomments +nocmd TXT

```
</div>

    - you should see your new TXT record in the output if changes have taken effect 

    - or some other random information if not

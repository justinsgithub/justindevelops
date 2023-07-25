# Github Pages

<!-- Video:[]() -->

Host your own website for free, with custom domain using Github Pages

## Create Website Repo

1. Create a new repo

    - if this is a user site for your Github, repo name must be {username}.github.io

2. Decide if you want to publish website in / (root) or /docs

3. Place website files in chosen destination

    - for example create file `docs/index.html` with the following content

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>My Github Pages Site</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
  </head>
  <body>
    <h1>My Github Pages Site<h1>
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

3. go to DNS provider (such as google domains) and edit DNS settings so that CNAME points to the github url (such as {username}.github.io)

    - such as docs.justin-develops.com points to justinsgithub.github.io

    - if using root domain (such as justin-develops.com), must point A record to Github IP addresses
    ```
      185.199.108.153
      185.199.109.153
      185.199.110.153
      185.199.111.153
    ```

    - should configure WWW subdomain as well if using root domain

!!! warning

    - may take a long time for changes with DNS provider to take effect (up to 24 hours)
    - github pages will show an "improperly configured" error until the changes take effect
    - will also take time for github to provision certs after domain check is successful

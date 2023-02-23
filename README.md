# surf
control your current url

Navigate around the web directly from your urbit command line. (Or at least those portions of the web which allow themselves to be displayed in an iframe...)


## Why?
Just a simple toy with several shortcomings, but seems effective enough that it could be a jumping off point to build some cool things.

- Leverage regular patterns in urbit app urls to build tools to give you fine grained control over how you navigate around your ship's frontend interface.
- Navigate around the regular web using patterns you've saved and tools you've built on your urbit.
- ...

![](https://nyc3.digitaloceanspaces.com/s3.burtonjernigan/dev/surf/surf-ui.png)

![](https://nyc3.digitaloceanspaces.com/s3.burtonjernigan/dev/surf/surf-cli.png)

## Installation
1. Clone this repo.
2. Boot up a ship (fakezod or moon or whatever you use).
4. `|new-desk %surf` to create a new desk called `%surf`.
5. `|mount %surf` to access the `%surf` desk from the unix command line.
6. At the unix command line `rm -rf [ship-name]/surf/*` to empty out the contents of the desk.
7. `cp -r surf/* [ship-name]/surf` to copy the contents of this repo into your new desk.
8. At the dojo command line `|commit %surf`.
9. Install with `|install our %surf`.
10. Link the command line app with `|link %surf`.
11. Switch through command line apps with `Ctrl+X` until you see the `~zod:surf` prompt.
12. Type `;printer` and hit `ENTER` to see the currently saved `url`.
13. Open your browser to `[your-domain-name]/apps/surf`.
14. Type `;set-url 'http[s]://[your-domain-name]'` and hit `ENTER` from the CLI to navigate to your urbit's frontend.

- To learn more about building urbit command line interfaces you can go [here](https://github.com/niblyx-malnus/clibox).
- To learn more about using urbit's http-api you can go [here](https://github.com/niblyx-malnus/hapibox).


## Basic Documentation
### Pokes

```
poke('surf', 'surf-action', {
  "set-url": "https://urbit.org/"
})
```

### Scries

```
/~/scry/surf/url.json
```

### Subscription Paths

```
/url
```

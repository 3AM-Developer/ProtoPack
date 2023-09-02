
# ProtoPack

## Getting Started

1. You'll need [Go]([https://go.dev/dl/](https://go.dev/dl/ "https://go.dev/dl/") and [git](https://git-scm.com/) for Windows.
3. Then you need to install [packwiz](https://github.com/packwiz/packwiz) by running `go install github.com/packwiz/packwiz@latest`
4. Clone this repo: `git clone https://github.com/3AM-Developer/ProtoPack.git`


## Adding Mods

### Un-versioned 
To add an un-versioned mod from Modrinth, you'll need to find the mod on the site.
![unversioned mod url](https://github.com/3AM-Developer/ProtoPack/blob/master/resources/unversioned_mod.png)

### Versioned
To add a versioned mod from Modrinth, you'll need to be sure you chose the right loader and game version. These should be used sparingly, and only to prevent conflicts where possible.

First find the mod on the site, and check the "Versions" box in the pages content.
![select versions](https://github.com/3AM-Developer/ProtoPack/blob/master/resources/select_versions.png)

Then you need specify the loader and game version as shown below:
![specify loader and version](https://github.com/3AM-Developer/ProtoPack/blob/master/resources/specify_loader_and_gameversion.png)

Find the version from the list of available choices, and select it. The url at the top is the one you use in the command.
![found url](https://github.com/3AM-Developer/ProtoPack/blob/master/resources/versioned_mod.png)

### Adding the mod (for real this time)
All you have to do now is run:
`packwiz modrinth add [url]`

Alternatively you can also do the same with curseforge following similar steps:
`packwiz curseforge add [url]`

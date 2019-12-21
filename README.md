# Colin But Online Resume

## Setup

Created this repository: __online-resume__

```bash
hugo new site online-resume
```

```bash
cd online-resume
git submodule add https://github.com/cowboysmall-tools/hugo-devresume-theme.git themes/hugo-devresume-theme
git init
git remote add origin https://github.com/colinbut/online-resume.git
git push -u origin master
```

Following instructions in the `README.md` of the hugo-devresume-theme github repo to copy the `config.toml` config file from 
`themes/hugo-devresume-theme/exampleSite/` to the root directory of this repo.

Testing the skeleton out:

```bash
hugo server
```

Navigating to http://localhost:1313

## Development

For making changes, edit the content in `config.toml` as per my need.

## Build & Deployment

Following instructions from Hugo Quickstart...

The publish steps are all wrapped up in a shell script `deploy.sh`

```bash
./deploy.sh
```








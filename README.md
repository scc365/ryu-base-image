# Ryu Docker Base Image 🐳

This is a base image for a dockerized Ryu controller application. It contains a small set of python packages that you are likely to use when creating Ryu controllers and, of-course, it contains Ryu itself.

## Available Images

All images are available via the GitHub Container Registry (`ghcr.io`) and target ARM and x86 architectures.

 - `ghcr.io/scc365/ryu:4.34`
 - `ghcr.io/scc365/ryu:4.33`
 - `ghcr.io/scc365/ryu:4.32`
 - `ghcr.io/scc365/ryu:4.31`
 - `ghcr.io/scc365/ryu:4.30`

## Usage

This can simply be used as is like so:

```dockerfile
ARG RYU_VERSION=4.34
FROM ghcr.io/scc365/ryu:${RYU_VERSION}
```

It is not suggested that you alter the packages in the `requirements.txt` file here. Instead, use a separate file specifically for your controller.

## Updating

Think that a package is so commonly used in Ryu controller creation that it should be in the base image (`apk` or `pip`)? Feel free to create a PR updating `requirements.txt` or the `Dockerfile`, but please write a small justification in the PR.
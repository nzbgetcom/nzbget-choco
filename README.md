# NZBGet package sources for [Chocolatey](https://chocolatey.org) package manager

# Build package

```
cd nzbgetcom
choco pack
```

# Test install/uninstall
```
choco install nzbgetcom --source .
choco uninstall nzbgetcom
```

# Push package

```
choco apikey --api-key [API_KEY] -source https://push.chocolatey.org/
choco push nzbgetcom.25.0.0.nupkg --source https://push.chocolatey.org/
```

# Deprecate old nzbget package
```
# pack
cd nzbget
choco pack

# test
choco install nzbget --source "'.;https://community.chocolatey.org/api/v2/'"

# push
choco push nzbget.21.1.1.nupkg --source https://push.chocolatey.org/
```

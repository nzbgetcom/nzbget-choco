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
choco push nzbgetcom.24.1.0.nupkg --source https://push.chocolatey.org/
```

# NZBGet package sources for [Chocolatey](https://chocolatey.org) package manager

# Build package

```
cd nzbget
choco pack
```

# Test install/uninstall
```
choco install nzbget --source .
choco uninstall nzbget
```

# Push package

```
choco apikey --api-key [API_KEY] -source https://push.chocolatey.org/
choco push nzbget.23.0.0.nupkg --source https://push.chocolatey.org/
```

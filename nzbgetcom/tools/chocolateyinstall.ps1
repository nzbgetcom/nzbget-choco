$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/nzbgetcom/nzbget/releases/download/v25.0/nzbget-25.0-bin-windows-setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'nzbget'

  checksum      = '8f7127d19d3a012337b56a7532fc4025ed8abbd19bb5ecd2cd98016b9c7b20e5'
  checksumType  = 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs

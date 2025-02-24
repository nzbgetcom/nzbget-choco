$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/nzbgetcom/nzbget/releases/download/v24.6/nzbget-24.6-bin-windows-setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'nzbget'

  checksum      = 'e6a4ea1587ba1f63801eb44ab2efbe8e0fe5f9b8916dfdba8d5c8c31d90f793e'
  checksumType  = 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/nzbgetcom/nzbget/releases/download/v24.3/nzbget-24.3-bin-windows-setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'nzbget'

  checksum      = '6e22a91d0cbfb0e40fef73ae4c45f60b0b5bb0a81a99e3f125589d20822485ec'
  checksumType  = 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs

Update-SessionEnvironment

$proxy = Get-EffectiveProxy
if ($proxy) {
  Write-Host "Setting CLI proxy: $proxy"
  $env:http_proxy = $env:https_proxy = $proxy
}

python -m pip install $env:ChocolateyPackageName==$env:ChocolateyPackageVersion
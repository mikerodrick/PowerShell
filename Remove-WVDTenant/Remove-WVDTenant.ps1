$creds = Get-Credential
Add-RdsAccount -DeploymentUrl "https://rdbroker.wvd.microsoft.com" -Credential $creds
 
$tenants = @((Get-RdsTenant).tenantname)

if ($tenants) {
  foreach ($tenant in $tenants) {
    $pools = @((Get-RdsHostPool $tenant).HostPoolName)
    if ($pools) {
      foreach ($pool in $pools) {
        $groups = @((Get-RdsAppGroup $tenant $pool).AppGroupName)
        if ($groups) {
          foreach ($group in $groups) {
            $apps = @((Get-RdsRemoteApp $tenant $pool $group).RemoteAppName)
            if ($apps) {
              foreach ($app in $apps) {
                Remove-RdsRemoteApp $tenant $pool $group $app
              }
            }
            Remove-RdsAppGroup $tenant $pool $group
          }
        }
        Remove-RdsHostPool $tenant $pool
      }
    }
    Remove-RdsTenant $tenant
  }
}
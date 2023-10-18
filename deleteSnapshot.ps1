param($SnapshotName)

# Define your Azure subscription and resource group
$subscriptionId = "d81e9b22-68b1-4ea6-b08f-c3d8a831d67d"
$resourceGroupName = "testkham"


# Sign in to Azure (you may need to provide credentials)
Connect-AzAccount

# Set the subscription context
Set-AzContext -SubscriptionId $subscriptionId

Write-Output "Deleting snapshot $snapshotName..."
Remove-AzSnapshot -ResourceGroupName $resourceGroupName -SnapshotName $SnapshotName -Force
Write-Output "Snapshot $snapshotName deleted."

Write-Output "Snapshot cleanup completed."

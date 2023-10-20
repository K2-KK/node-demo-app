param($SnapshotName, $ResourceGroupName)

# Define your Azure subscription and resource group
$subscriptionId = "d81e9b22-68b1-4ea6-b08f-c3d8a831d67d"

# Sign in to Azure (you may need to provide credentials)
Connect-AzAccount

# Set the subscription context
Set-AzContext -SubscriptionId $subscriptionId

Write-Output "Deleting snapshot $snapshotName..."
Remove-AzSnapshot -ResourceGroupName $ResourceGroupName -SnapshotName $SnapshotName -Force
Write-Output "Snapshot $snapshotName deleted."

Write-Output "Snapshot cleanup completed."

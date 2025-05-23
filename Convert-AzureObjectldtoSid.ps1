param(
[String] $Objectld
)
function Convert-AzureAdObjectIdToSid { 
    param([String] $ObjectId)
    $bytes = [Guid]::Parse($ObjectId).ToByteArray()
    $array = New-Object 'UInt32[]' 4
    [Buffer]::BlockCopy($bytes, 0, $array, 0, 16)
    $sid= "S-1-12-1-$array".Replace('','-') 
    return $sid
}

$sid = Convert-AzureAdObjectIdToSid -Objectld $objectid 
Write-Output "Resolved SID: $sid"
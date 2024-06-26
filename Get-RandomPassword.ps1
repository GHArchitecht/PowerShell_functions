function Get-RandomPassword {
    param(
        [int]$Length = 12
    )
    
    $alphabets = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    $characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%&*()_+-=[]{};:,.<>?/"
    
    $firstCharacter = $alphabets[(Get-Random -Maximum $alphabets.Length)]
    $remainingCharacters = -join ((1..($Length - 1)) | ForEach-Object { $characters[(Get-Random -Maximum $characters.Length)] })
    
    $password = $firstCharacter + $remainingCharacters
    return $password
}

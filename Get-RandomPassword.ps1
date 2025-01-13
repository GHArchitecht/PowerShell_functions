<#
.SYNOPSIS
Generates a random password.

.DESCRIPTION
The Get-RandomPassword function generates a random password of specified length. It uses a combination of alphabets, numbers, and special characters to create a strong password.

.PARAMETER Length
The length of the password to be generated. The default value is 12.

.EXAMPLE
PS> Get-RandomPassword -Length 8
Generates a random password of length 8.

.OUTPUTS
System.String
Returns the generated random password as a string.

#>
function Get-RandomPassword {
    param(
        [int]$Length = 12
    )
    
    # define the characters to be used in the password
    $alphabets = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    $characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%&*()_+-=[]{};:,.<>?/"
    

    $firstCharacter = $alphabets[(Get-Random -Maximum $alphabets.Length)]
    $remainingCharacters = -join ((1..($Length - 1)) | ForEach-Object { $characters[(Get-Random -Maximum $characters.Length)] })

    # return the password
    $password = $firstCharacter + $remainingCharacters
    
    return $password
}


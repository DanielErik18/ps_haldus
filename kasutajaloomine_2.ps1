param(
    $username
    $fullname
    $description
)

$userpassword = ConvertTo-SecureString 'qwerty' -AsPlainText -Force

New-LocalUser $username -Password $userpassword -FullName $fullname -Description $description

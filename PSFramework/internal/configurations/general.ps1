﻿# Unattended mode, so there is a central flag scripts & moduls can detect
Set-PSFConfig -Module PSFramework -Name 'System.Unattended' -Value $false -Initialize -Validation "bool" -Handler { [PSFramework.PSFCore.PSFCoreHost]::Unattended = $args[0] } -Description "Central setting, showing whether the current execution is unattended or not. This allows scripts/moduls to react to whether there is a user at the controls or not."

Set-PSFConfig -Module PSFramework -Name 'SupportPackage.ContactMessage' -Value ' ' -Initialize -Validation 'string' -Description 'Message shown when using New-PSFSUpportPackage. This allows an organization to tie information on how to submit a support package into the command that generates it'

# Encoding Settings
Set-PSFConfig -Module PSFramework -Name 'Text.Encoding.FullTabCompletion' -Value $false -Initialize -Validation 'bool' -Description 'Whether all eoncodings should be part of the tab completion for encodings. By default, only a manageable subset is shown.'
Set-PSFConfig -Module PSFramework -Name 'Text.Encoding.DefaultWrite' -Value 'utf-8' -Initialize -Validation 'string' -Description 'The default encoding to use when writing to file. Only applied by implementing commands.'
Set-PSFConfig -Module PSFramework -Name 'Text.Encoding.DefaultRead' -Value 'utf-8' -Initialize -Validation 'string' -Description 'The default encoding to use when reading from file. Only applied by implementing commands.'
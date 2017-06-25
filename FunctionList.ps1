#colors console green and black
function Color-Console 
{
  $host.ui.rawui.backgroundcolor = "black"
  $host.ui.rawui.foregroundcolor = "green"
  $hosttime = (dir $pshome\powershell.exe).creationtime
    $Host.UI.RawUI.WindowTitle = "Windows PowerShell $hostversion ($hosttime)"
    clear-host
}
Color-console
write-host `t `n "y-------Console Colors Loaded Sucessfully-------" `n
           
##loads Custom Settings and Perameters
function set-advancedperameters	
{
	[cmdletbinding(
		DefaultParameterSetName='Parameter Set 1',
		SupportsShouldProcess=$true, 
		PositionalBinding=$false,
		HelpUri = Get-MyConsole-Help.txt,
		ConfirmImpact='Medium')]
	  [Alias()]
	  [OutputType([String])]
  #Parameter set 1 Param1
  param ( 
		[parameter(mandatory=$true,
			ValueFromPipeline=$true,
			ValueFromPipelineByPropertyName=$true, 
			ValueFromRemainingArguments=$false,
			Position=0,
			ParameterSetName='Parameter Set 1')]
    [validatenotnull()]
		[validatenotnullorempty()]
		[ValidateCount(0,5)]
		[ValidateSet("p1","p2","p3")]
    [system.consolecolor[]]$color = [system.enum]:: getvalues([system.consolecolor]),
    [ipaddress]$ipaddress,
		[alias("p1")]
		$Param1,

  #Parameter Set 2 Param2
  [Parameter(ParameterSetName='Parameter Set 2')]
    [AllowNull()]
    [AllowEmptyCollection()]
    [AllowEmptyString()]
    [ValidateScript({$true})]
    [ValidateRange(0,5)]
    [int]$
		$Param2,
		
  #Parameter Set 3 Param3
  [Parameter(ParameterSetName='Parameter Set 3')]
    [ValidatePattern("[a-z]*")]
    [ValidateLength(0,15)]
    [String]
    $Param3
  )
)
	
	Begin {
		write-host "-------Welcome to MyCustom Console-------------" `n "
    $_
	}
	
	Process {
		if ($pscmdlet.ShouldProcess($processs="get-process")) { 
      
		}
	}
	
	End {
	
	}
}



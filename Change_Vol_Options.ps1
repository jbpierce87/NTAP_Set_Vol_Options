###=== Change Vol Options ===###


###=== Change vol options for all vols on a controller ===###
get-navol | ForEach-Object { 
	$_.Name
	$volname = $_.Name
	set-navoloption -name $volname fs_size_fixed off
	}

###=== Change vol options for all vols contained in specific vfiler ===###

#Set vfiler name variable 
$Vfiler = "vfesx9prd01"

###=== Set specific 
get-navol -Controller $fitn09p028 |  ? {$_.OwningVfiler -eq "$Vfiler"} | ForEach-Object { 
	$_.Name
	$volname = $_.Name
	set-navoloption -name $volname fs_size_fixed off -Controller $fitn09p028
	}
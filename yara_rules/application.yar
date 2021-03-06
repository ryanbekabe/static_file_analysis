//check URL application

rule ClickOnce_file {
	meta:
		description = "ClickOnce File"
		author = "Lionel PRAT"
        version = "0.1"
		weight = 4
		reference = "https://www.sixdub.net/?p=555"
		tag = "attack.initial_access,attack.t1189,attack.t1192,attack.t1193,attack.t1194,attack.execution"
	strings:
	    $xml0 = "<?xml" nocase
	    $xml1 = "xmlns:" nocase
	    $ClickOnce0 = "schemas-microsoft-com:clickonce" nocase
	    $ClickOnce1 = ".manifest" nocase
	    $ClickOnce2 = "deploymentProvider" nocase
	    
	condition:
	    any of ($xml*) and any of ($ClickOnce*)
}

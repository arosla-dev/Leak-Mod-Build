//
// .qc file version 1.0
//

$modelname props_c17\Handrail04_DoubleRise.mdl

$scale 1.0
$body "Body" "Handrail04_DoubleRise_reference.smd"
$staticprop
$surfaceprop "metal"

// --------- Animation sequences -------
$sequence "idle" "Handrail04_DoubleRise_reference" fps 30




//$lod 30
//{
//     replacemodel "Handrail04_DoubleRise_reference" "Handrail04_DoubleRise_lod1"
//}

//$lod 60
//{
//     replacemodel "Handrail04_DoubleRise_reference" "Handrail04_DoubleRise_lod2"
//}

//$lod 80
//{
//     replacemodel "Handrail04_DoubleRise_reference" "Handrail04_DoubleRise_lod3"
//}

//$lod 100
//{
//     replacemodel "Handrail04_DoubleRise_reference" "Handrail04_DoubleRise_lod4"
//}

$collisionmodel "Handrail04_DoubleRise_physbox.smd" {
     // Mass in kilograms
     $Mass 222
     $concave
}

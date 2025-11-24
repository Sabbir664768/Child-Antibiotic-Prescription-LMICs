svyset[pw=wt], psu(psuid) strata( strataid)
tab h22, m
drop if (h22==.)
tab h22, m
svy: tab h22, count col percent

drop if h22==0
tab h22, m

tab antibiotic_f, m
drop if (antibiotic_f==.)
tab antibiotic_f, m
svy: tab antibiotic_f , count col percent


drop if antibiotic_f==0
tab antibiotic_f, m

tab qualified_f, m
drop if qualified_f==.
svy: tab qualified_f , count col percent

svy: qualified_f i.v025 i.v106 i.v137 i.v190 i.v705 i.v717 i.b4 i.hw1 i.bmi i.country

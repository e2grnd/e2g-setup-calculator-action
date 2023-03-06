#!/bin/bash
mkdir -p ~/Projects/all-calculators
cd ~/Projects/all-calculators
git -C asme-b31g-calculator checkout release/stage && git -C asme-b31g-calculator merge -m'stage release' release/dev && git -C asme-b31g-calculator push
git -C bakeout-calculator checkout release/stage && git -C bakeout-calculator merge -m'stage release' release/dev && git -C bakeout-calculator push
git -C bayes-calculator checkout release/stage && git -C bayes-calculator merge -m'stage release' release/dev && git -C bayes-calculator push
git -C bayes-worker-calculator checkout release/stage && git -C bayes-worker-calculator merge -m'stage release' release/dev && git -C bayes-worker-calculator push
git -C bengi-worker-calculator checkout release/stage && git -C bengi-worker-calculator merge -m'stage release' release/dev && git -C bengi-worker-calculator push
git -C best-rate-calculator checkout release/stage && git -C best-rate-calculator merge -m'stage release' release/dev && git -C best-rate-calculator push
git -C bijlaard-calculator checkout release/stage && git -C bijlaard-calculator merge -m'stage release' release/dev && git -C bijlaard-calculator push
git -C boiler-tube-calculator checkout release/stage && git -C boiler-tube-calculator merge -m'stage release' release/dev && git -C boiler-tube-calculator push
git -C buried-pipelines-calculator checkout release/stage && git -C buried-pipelines-calculator merge -m'stage release' release/dev && git -C buried-pipelines-calculator push
git -C branch-calculator checkout release/stage && git -C branch-calculator merge -m'stage release' release/dev && git -C branch-calculator push
git -C bundle-sight-calculator checkout release/stage && git -C bundle-sight-calculator merge -m'stage release' release/dev && git -C bundle-sight-calculator push
git -C burstp-calculator checkout release/stage && git -C burstp-calculator merge -m'stage release' release/dev && git -C burstp-calculator push
git -C charpy-calculator checkout release/stage && git -C charpy-calculator merge -m'stage release' release/dev && git -C charpy-calculator push
git -C corroding-pipe-life-calculator checkout release/stage && git -C corroding-pipe-life-calculator merge -m'stage release' release/dev && git -C corroding-pipe-life-calculator push
git -C cp-design-calculator checkout release/stage && git -C cp-design-calculator merge -m'stage release' release/dev && git -C cp-design-calculator push
git -C cp-design-offshore-calculator checkout release/stage && git -C cp-design-offshore-calculator merge -m'stage release' release/dev && git -C cp-design-offshore-calculator push
git -C crack-attack-calculator checkout release/stage && git -C crack-attack-calculator merge -m'stage release' release/dev && git -C crack-attack-calculator push
git -C lot-centered-analysis-calculator checkout release/stage && git -C lot-centered-analysis-calculator merge -m'stage release' release/dev && git -C lot-centered-analysis-calculator push
git -C creep-life-calculator checkout release/stage && git -C creep-life-calculator merge -m'stage release' release/dev && git -C creep-life-calculator push
git -C cui-calculator checkout release/stage && git -C cui-calculator merge -m'stage release' release/dev && git -C cui-calculator push
git -C exemption-calculator checkout release/stage && git -C exemption-calculator merge -m'stage release' release/dev && git -C exemption-calculator push
git -C fast2-calculator checkout release/stage && git -C fast2-calculator merge -m'stage release' release/dev && git -C fast2-calculator push
git -C fatigue-calculator checkout release/stage && git -C fatigue-calculator merge -m'stage release' release/dev && git -C fatigue-calculator push
git -C fatigue-damage-calculator checkout release/stage && git -C fatigue-damage-calculator merge -m'stage release' release/dev && git -C fatigue-damage-calculator push
git -C fatigue-data-explorer-calculator checkout release/stage && git -C fatigue-data-explorer-calculator merge -m'stage release' release/dev && git -C fatigue-data-explorer-calculator push
git -C ffs-brittle-calculator checkout release/stage && git -C ffs-brittle-calculator merge -m'stage release' release/dev && git -C ffs-brittle-calculator push
git -C ffs-cracking-calculator checkout release/stage && git -C ffs-cracking-calculator merge -m'stage release' release/dev && git -C ffs-cracking-calculator push
git -C ffs-creep-calculator checkout release/stage && git -C ffs-creep-calculator merge -m'stage release' release/dev && git -C ffs-creep-calculator push
git -C ffs-dent-gouge-calculator checkout release/stage && git -C ffs-dent-gouge-calculator merge -m'stage release' release/dev && git -C ffs-dent-gouge-calculator push
git -C ffs-fire-damage-calculator checkout release/stage && git -C ffs-fire-damage-calculator merge -m'stage release' release/dev && git -C ffs-fire-damage-calculator push
git -C ffs-hydrogen-calculator checkout release/stage && git -C ffs-hydrogen-calculator merge -m'stage release' release/dev && git -C ffs-hydrogen-calculator push
git -C ffs-laminations-calculator checkout release/stage && git -C ffs-laminations-calculator merge -m'stage release' release/dev && git -C ffs-laminations-calculator push
git -C ffs-misalignment-calculator checkout release/stage && git -C ffs-misalignment-calculator merge -m'stage release' release/dev && git -C ffs-misalignment-calculator push
git -C ffs-pitting-calculator checkout release/stage && git -C ffs-pitting-calculator merge -m'stage release' release/dev && git -C ffs-pitting-calculator push
git -C ffs-thinning-calculator checkout release/stage && git -C ffs-thinning-calculator merge -m'stage release' release/dev && git -C ffs-thinning-calculator push
git -C flange-calculator checkout release/stage && git -C flange-calculator merge -m'stage release' release/dev && git -C flange-calculator push
git -C hottap-calculator checkout release/stage && git -C hottap-calculator merge -m'stage release' release/dev && git -C hottap-calculator push
git -C htha-calculator checkout release/stage && git -C htha-calculator merge -m'stage release' release/dev && git -C htha-calculator push
git -C htha-steady-state-calculator checkout release/stage && git -C htha-steady-state-calculator merge -m'stage release' release/dev && git -C htha-steady-state-calculator push
git -C idinterp-calculator checkout release/stage && git -C idinterp-calculator merge -m'stage release' release/dev && git -C idinterp-calculator push
git -C inspection-report-calculator checkout release/stage && git -C inspection-report-calculator merge -m'stage release' release/dev && git -C inspection-report-calculator push
git -C insulation-calculator checkout release/stage && git -C insulation-calculator merge -m'stage release' release/dev && git -C insulation-calculator push
git -C material-explorer-calculator checkout release/stage && git -C material-explorer-calculator merge -m'stage release' release/dev && git -C material-explorer-calculator push
git -C mixer-calculator checkout release/stage && git -C mixer-calculator merge -m'stage release' release/dev && git -C mixer-calculator push
git -C netica-worker-calculator checkout release/stage && git -C netica-worker-calculator merge -m'stage release' release/dev && git -C netica-worker-calculator push
git -C nozzle-calculator checkout release/stage && git -C nozzle-calculator merge -m'stage release' release/dev && git -C nozzle-calculator push
git -C omega-calculator checkout release/stage && git -C omega-calculator merge -m'stage release' release/dev && git -C omega-calculator push
git -C pipe-pt-calculator checkout release/stage && git -C pipe-pt-calculator merge -m'stage release' release/dev && git -C pipe-pt-calculator push
git -C pipe-span-calculator checkout release/stage && git -C pipe-span-calculator merge -m'stage release' release/dev && git -C pipe-span-calculator push
git -C plausible-profiles-calculator checkout release/stage && git -C plausible-profiles-calculator merge -m'stage release' release/dev && git -C plausible-profiles-calculator push
git -C plume-calculator checkout release/stage && git -C plume-calculator merge -m'stage release' release/dev && git -C plume-calculator push
git -C prd-update-calculator checkout release/stage && git -C prd-update-calculator merge -m'stage release' release/dev && git -C prd-update-calculator push
git -C sage-x-calculator checkout release/stage && git -C sage-x-calculator merge -m'stage release' release/dev && git -C sage-x-calculator push
git -C shell-pt-calculator checkout release/stage && git -C shell-pt-calculator merge -m'stage release' release/dev && git -C shell-pt-calculator push
git -C shutdown-calculator checkout release/stage && git -C shutdown-calculator merge -m'stage release' release/dev && git -C shutdown-calculator push
git -C simflex-calculator checkout release/stage && git -C simflex-calculator merge -m'stage release' release/dev && git -C simflex-calculator push
git -C smooth-bar-fatigue-life-calculator checkout release/stage && git -C smooth-bar-fatigue-life-calculator merge -m'stage release' release/dev && git -C smooth-bar-fatigue-life-calculator push
git -C stored-energy-calculator checkout release/stage && git -C stored-energy-calculator merge -m'stage release' release/dev && git -C stored-energy-calculator push
git -C tank-thickness-calculator checkout release/stage && git -C tank-thickness-calculator merge -m'stage release' release/dev && git -C tank-thickness-calculator push
git -C tank-settlement-calculator checkout release/stage && git -C tank-settlement-calculator merge -m'stage release' release/dev && git -C tank-settlement-calculator push
git -C tbreak checkout release/stage && git -C tbreak merge -m'stage release' release/dev && git -C tbreak push
git -C thermowells-calculator checkout release/stage && git -C thermowells-calculator merge -m'stage release' release/dev && git -C thermowells-calculator push
git -C toughness-calculator checkout release/stage && git -C toughness-calculator merge -m'stage release' release/dev && git -C toughness-calculator push
git -C upgrade-calculator checkout release/stage && git -C upgrade-calculator merge -m'stage release' release/dev && git -C upgrade-calculator push
git -C welded-joint-fatigue-life-calculator checkout release/stage && git -C welded-joint-fatigue-life-calculator merge -m'stage release' release/dev && git -C welded-joint-fatigue-life-calculator push

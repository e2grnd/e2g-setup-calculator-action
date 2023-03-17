#!/bin/bash
mkdir -p ~/Projects/all-calculators
cd ~/Projects/all-calculators
git -C asme-b31g-calculator checkout release/prod && git -C asme-b31g-calculator merge -m'prod release' release/stage && git -C asme-b31g-calculator push
git -C bakeout-calculator checkout release/prod && git -C bakeout-calculator merge -m'prod release' release/stage && git -C bakeout-calculator push
git -C bayes-calculator checkout release/prod && git -C bayes-calculator merge -m'prod release' release/stage && git -C bayes-calculator push
git -C bayes-worker-calculator checkout release/prod && git -C bayes-worker-calculator merge -m'prod release' release/stage && git -C bayes-worker-calculator push
git -C bengi-worker-calculator checkout release/prod && git -C bengi-worker-calculator merge -m'prod release' release/stage && git -C bengi-worker-calculator push
git -C best-rate-calculator checkout release/prod && git -C best-rate-calculator merge -m'prod release' release/stage && git -C best-rate-calculator push
git -C bijlaard-calculator checkout release/prod && git -C bijlaard-calculator merge -m'prod release' release/stage && git -C bijlaard-calculator push
git -C boiler-tube-calculator checkout release/prod && git -C boiler-tube-calculator merge -m'prod release' release/stage && git -C boiler-tube-calculator push
git -C buried-pipelines-calculator checkout release/prod && git -C buried-pipelines-calculator merge -m'prod release' release/stage && git -C buried-pipelines-calculator push
git -C branch-calculator checkout release/prod && git -C branch-calculator merge -m'prod release' release/stage && git -C branch-calculator push
git -C bundle-sight-calculator checkout release/prod && git -C bundle-sight-calculator merge -m'prod release' release/stage && git -C bundle-sight-calculator push
git -C burstp-calculator checkout release/prod && git -C burstp-calculator merge -m'prod release' release/stage && git -C burstp-calculator push
git -C charpy-calculator checkout release/prod && git -C charpy-calculator merge -m'prod release' release/stage && git -C charpy-calculator push
git -C corroding-pipe-life-calculator checkout release/prod && git -C corroding-pipe-life-calculator merge -m'prod release' release/stage && git -C corroding-pipe-life-calculator push
git -C cp-design-calculator checkout release/prod && git -C cp-design-calculator merge -m'prod release' release/stage && git -C cp-design-calculator push
git -C cp-design-offshore-calculator checkout release/prod && git -C cp-design-offshore-calculator merge -m'prod release' release/stage && git -C cp-design-offshore-calculator push
git -C crack-attack-calculator checkout release/prod && git -C crack-attack-calculator merge -m'prod release' release/stage && git -C crack-attack-calculator push
git -C lot-centered-analysis-calculator checkout release/prod && git -C lot-centered-analysis-calculator merge -m'prod release' release/stage && git -C lot-centered-analysis-calculator push
git -C creep-life-calculator checkout release/prod && git -C creep-life-calculator merge -m'prod release' release/stage && git -C creep-life-calculator push
git -C cui-calculator checkout release/prod && git -C cui-calculator merge -m'prod release' release/stage && git -C cui-calculator push
git -C exemption-calculator checkout release/prod && git -C exemption-calculator merge -m'prod release' release/stage && git -C exemption-calculator push
git -C fast2-calculator checkout release/prod && git -C fast2-calculator merge -m'prod release' release/stage && git -C fast2-calculator push
git -C fatigue-calculator checkout release/prod && git -C fatigue-calculator merge -m'prod release' release/stage && git -C fatigue-calculator push
git -C fatigue-damage-calculator checkout release/prod && git -C fatigue-damage-calculator merge -m'prod release' release/stage && git -C fatigue-damage-calculator push
git -C fatigue-data-explorer-calculator checkout release/prod && git -C fatigue-data-explorer-calculator merge -m'prod release' release/stage && git -C fatigue-data-explorer-calculator push
git -C ffs-brittle-calculator checkout release/prod && git -C ffs-brittle-calculator merge -m'prod release' release/stage && git -C ffs-brittle-calculator push
git -C ffs-cracking-calculator checkout release/prod && git -C ffs-cracking-calculator merge -m'prod release' release/stage && git -C ffs-cracking-calculator push
git -C ffs-creep-calculator checkout release/prod && git -C ffs-creep-calculator merge -m'prod release' release/stage && git -C ffs-creep-calculator push
git -C ffs-dent-gouge-calculator checkout release/prod && git -C ffs-dent-gouge-calculator merge -m'prod release' release/stage && git -C ffs-dent-gouge-calculator push
git -C ffs-fire-damage-calculator checkout release/prod && git -C ffs-fire-damage-calculator merge -m'prod release' release/stage && git -C ffs-fire-damage-calculator push
git -C ffs-hydrogen-calculator checkout release/prod && git -C ffs-hydrogen-calculator merge -m'prod release' release/stage && git -C ffs-hydrogen-calculator push
git -C ffs-laminations-calculator checkout release/prod && git -C ffs-laminations-calculator merge -m'prod release' release/stage && git -C ffs-laminations-calculator push
git -C ffs-misalignment-calculator checkout release/prod && git -C ffs-misalignment-calculator merge -m'prod release' release/stage && git -C ffs-misalignment-calculator push
git -C ffs-pitting-calculator checkout release/prod && git -C ffs-pitting-calculator merge -m'prod release' release/stage && git -C ffs-pitting-calculator push
git -C ffs-thinning-calculator checkout release/prod && git -C ffs-thinning-calculator merge -m'prod release' release/stage && git -C ffs-thinning-calculator push
git -C fixture-calculator checkout release/prod && git -C fixture-calculator merge -m'prod release' release/stage && git -C fixture-calculator push
git -C flange-calculator checkout release/prod && git -C flange-calculator merge -m'prod release' release/stage && git -C flange-calculator push
git -C hottap-calculator checkout release/prod && git -C hottap-calculator merge -m'prod release' release/stage && git -C hottap-calculator push
git -C htha-calculator checkout release/prod && git -C htha-calculator merge -m'prod release' release/stage && git -C htha-calculator push
git -C htha-steady-state-calculator checkout release/prod && git -C htha-steady-state-calculator merge -m'prod release' release/stage && git -C htha-steady-state-calculator push
git -C idinterp-calculator checkout release/prod && git -C idinterp-calculator merge -m'prod release' release/stage && git -C idinterp-calculator push
git -C inspection-report-calculator checkout release/prod && git -C inspection-report-calculator merge -m'prod release' release/stage && git -C inspection-report-calculator push
git -C insulation-calculator checkout release/prod && git -C insulation-calculator merge -m'prod release' release/stage && git -C insulation-calculator push
git -C material-explorer-calculator checkout release/prod && git -C material-explorer-calculator merge -m'prod release' release/stage && git -C material-explorer-calculator push
git -C mixer-calculator checkout release/prod && git -C mixer-calculator merge -m'prod release' release/stage && git -C mixer-calculator push
git -C netica-worker-calculator checkout release/prod && git -C netica-worker-calculator merge -m'prod release' release/stage && git -C netica-worker-calculator push
git -C nozzle-calculator checkout release/prod && git -C nozzle-calculator merge -m'prod release' release/stage && git -C nozzle-calculator push
git -C omega-calculator checkout release/prod && git -C omega-calculator merge -m'prod release' release/stage && git -C omega-calculator push
git -C pipe-pt-calculator checkout release/prod && git -C pipe-pt-calculator merge -m'prod release' release/stage && git -C pipe-pt-calculator push
git -C pipe-span-calculator checkout release/prod && git -C pipe-span-calculator merge -m'prod release' release/stage && git -C pipe-span-calculator push
git -C plausible-profiles-calculator checkout release/prod && git -C plausible-profiles-calculator merge -m'prod release' release/stage && git -C plausible-profiles-calculator push
git -C plume-calculator checkout release/prod && git -C plume-calculator merge -m'prod release' release/stage && git -C plume-calculator push
git -C prd-update-calculator checkout release/prod && git -C prd-update-calculator merge -m'prod release' release/stage && git -C prd-update-calculator push
git -C rainflow-calculator checkout release/prod && git -C rainflow-calculator merge -m'prod release' release/stage && git -C rainflow-calculator push
git -C sage-x-calculator checkout release/prod && git -C sage-x-calculator merge -m'prod release' release/stage && git -C sage-x-calculator push
git -C shell-pt-calculator checkout release/prod && git -C shell-pt-calculator merge -m'prod release' release/stage && git -C shell-pt-calculator push
git -C shutdown-calculator checkout release/prod && git -C shutdown-calculator merge -m'prod release' release/stage && git -C shutdown-calculator push
git -C simflex-calculator checkout release/prod && git -C simflex-calculator merge -m'prod release' release/stage && git -C simflex-calculator push
git -C smooth-bar-fatigue-life-calculator checkout release/prod && git -C smooth-bar-fatigue-life-calculator merge -m'prod release' release/stage && git -C smooth-bar-fatigue-life-calculator push
git -C stored-energy-calculator checkout release/prod && git -C stored-energy-calculator merge -m'prod release' release/stage && git -C stored-energy-calculator push
git -C tank-thickness-calculator checkout release/prod && git -C tank-thickness-calculator merge -m'prod release' release/stage && git -C tank-thickness-calculator push
git -C tank-settlement-calculator checkout release/prod && git -C tank-settlement-calculator merge -m'prod release' release/stage && git -C tank-settlement-calculator push
git -C tbreak-calculator checkout release/prod && git -C tbreak-calculator merge -m'prod release' release/stage && git -C tbreak-calculator push
git -C thermowells-calculator checkout release/prod && git -C thermowells-calculator merge -m'prod release' release/stage && git -C thermowells-calculator push
git -C toughness-calculator checkout release/prod && git -C toughness-calculator merge -m'prod release' release/stage && git -C toughness-calculator push
git -C upgrade-calculator checkout release/prod && git -C upgrade-calculator merge -m'prod release' release/stage && git -C upgrade-calculator push
git -C welded-joint-fatigue-life-calculator checkout release/prod && git -C welded-joint-fatigue-life-calculator merge -m'prod release' release/stage && git -C welded-joint-fatigue-life-calculator push

#!/bin/bash
mkdir -p ~/Projects/all-calculators
cd ~/Projects/all-calculators
echo "

----- START api-1183-calculator -----"; git -C api-1183-calculator checkout release/stage && git -C api-1183-calculator merge -m'stage release' release/dev && git -C api-1183-calculator push
echo "

----- START asme-b31g-calculator -----"; git -C asme-b31g-calculator checkout release/stage && git -C asme-b31g-calculator merge -m'stage release' release/dev && git -C asme-b31g-calculator push
echo "

----- START bakeout-calculator -----"; git -C bakeout-calculator checkout release/stage && git -C bakeout-calculator merge -m'stage release' release/dev && git -C bakeout-calculator push
echo "

----- START bayes-calculator -----"; git -C bayes-calculator checkout release/stage && git -C bayes-calculator merge -m'stage release' release/dev && git -C bayes-calculator push
echo "

----- START bayes-worker-calculator -----"; git -C bayes-worker-calculator checkout release/stage && git -C bayes-worker-calculator merge -m'stage release' release/dev && git -C bayes-worker-calculator push
echo "

----- START bengi-worker-calculator -----"; git -C bengi-worker-calculator checkout release/stage && git -C bengi-worker-calculator merge -m'stage release' release/dev && git -C bengi-worker-calculator push
echo "

----- START best-rate-calculator -----"; git -C best-rate-calculator checkout release/stage && git -C best-rate-calculator merge -m'stage release' release/dev && git -C best-rate-calculator push
echo "

----- START bijlaard-calculator -----"; git -C bijlaard-calculator checkout release/stage && git -C bijlaard-calculator merge -m'stage release' release/dev && git -C bijlaard-calculator push
echo "

----- START boiler-tube-calculator -----"; git -C boiler-tube-calculator checkout release/stage && git -C boiler-tube-calculator merge -m'stage release' release/dev && git -C boiler-tube-calculator push
echo "

----- START buried-pipelines-calculator -----"; git -C buried-pipelines-calculator checkout release/stage && git -C buried-pipelines-calculator merge -m'stage release' release/dev && git -C buried-pipelines-calculator push
echo "

----- START branch-calculator -----"; git -C branch-calculator checkout release/stage && git -C branch-calculator merge -m'stage release' release/dev && git -C branch-calculator push
echo "

----- START bundle-sight-calculator -----"; git -C bundle-sight-calculator checkout release/stage && git -C bundle-sight-calculator merge -m'stage release' release/dev && git -C bundle-sight-calculator push
echo "

----- START burstp-calculator -----"; git -C burstp-calculator checkout release/stage && git -C burstp-calculator merge -m'stage release' release/dev && git -C burstp-calculator push
echo "

----- START charpy-calculator -----"; git -C charpy-calculator checkout release/stage && git -C charpy-calculator merge -m'stage release' release/dev && git -C charpy-calculator push
echo "

----- START corroding-pipe-life-calculator -----"; git -C corroding-pipe-life-calculator checkout release/stage && git -C corroding-pipe-life-calculator merge -m'stage release' release/dev && git -C corroding-pipe-life-calculator push
echo "

----- START cp-design-calculator -----"; git -C cp-design-calculator checkout release/stage && git -C cp-design-calculator merge -m'stage release' release/dev && git -C cp-design-calculator push
echo "

----- START cp-design-offshore-calculator -----"; git -C cp-design-offshore-calculator checkout release/stage && git -C cp-design-offshore-calculator merge -m'stage release' release/dev && git -C cp-design-offshore-calculator push
echo "

----- START crack-attack-calculator -----"; git -C crack-attack-calculator checkout release/stage && git -C crack-attack-calculator merge -m'stage release' release/dev && git -C crack-attack-calculator push
echo "

----- START lot-centered-analysis-calculator -----"; git -C lot-centered-analysis-calculator checkout release/stage && git -C lot-centered-analysis-calculator merge -m'stage release' release/dev && git -C lot-centered-analysis-calculator push
echo "

----- START creep-life-calculator -----"; git -C creep-life-calculator checkout release/stage && git -C creep-life-calculator merge -m'stage release' release/dev && git -C creep-life-calculator push
echo "

----- START cui-calculator -----"; git -C cui-calculator checkout release/stage && git -C cui-calculator merge -m'stage release' release/dev && git -C cui-calculator push
echo "

----- START damage-sight-calculator -----"; git -C damage-sight-calculator checkout release/stage && git -C damage-sight-calculator merge -m'stage release' release/dev && git -C damage-sight-calculator push
echo "

----- START exemption-calculator -----"; git -C exemption-calculator checkout release/stage && git -C exemption-calculator merge -m'stage release' release/dev && git -C exemption-calculator push
echo "

----- START fast2-calculator -----"; git -C fast2-calculator checkout release/stage && git -C fast2-calculator merge -m'stage release' release/dev && git -C fast2-calculator push
echo "

----- START fatigue-calculator -----"; git -C fatigue-calculator checkout release/stage && git -C fatigue-calculator merge -m'stage release' release/dev && git -C fatigue-calculator push
echo "

----- START fatigue-damage-calculator -----"; git -C fatigue-damage-calculator checkout release/stage && git -C fatigue-damage-calculator merge -m'stage release' release/dev && git -C fatigue-damage-calculator push
echo "

----- START fatigue-data-explorer-calculator -----"; git -C fatigue-data-explorer-calculator checkout release/stage && git -C fatigue-data-explorer-calculator merge -m'stage release' release/dev && git -C fatigue-data-explorer-calculator push
echo "

----- START feature-identification-calculator -----"; git -C feature-identification-calculator checkout release/stage && git -C feature-identification-calculator merge -m'stage release' release/dev && git -C feature-identification-calculator push
echo "

----- START ffs-brittle-calculator -----"; git -C ffs-brittle-calculator checkout release/stage && git -C ffs-brittle-calculator merge -m'stage release' release/dev && git -C ffs-brittle-calculator push
echo "

----- START ffs-cracking-calculator -----"; git -C ffs-cracking-calculator checkout release/stage && git -C ffs-cracking-calculator merge -m'stage release' release/dev && git -C ffs-cracking-calculator push
echo "

----- START ffs-creep-calculator -----"; git -C ffs-creep-calculator checkout release/stage && git -C ffs-creep-calculator merge -m'stage release' release/dev && git -C ffs-creep-calculator push
echo "

----- START ffs-dent-gouge-calculator -----"; git -C ffs-dent-gouge-calculator checkout release/stage && git -C ffs-dent-gouge-calculator merge -m'stage release' release/dev && git -C ffs-dent-gouge-calculator push
echo "

----- START ffs-fire-damage-calculator -----"; git -C ffs-fire-damage-calculator checkout release/stage && git -C ffs-fire-damage-calculator merge -m'stage release' release/dev && git -C ffs-fire-damage-calculator push
echo "

----- START ffs-hydrogen-calculator -----"; git -C ffs-hydrogen-calculator checkout release/stage && git -C ffs-hydrogen-calculator merge -m'stage release' release/dev && git -C ffs-hydrogen-calculator push
echo "

----- START ffs-laminations-calculator -----"; git -C ffs-laminations-calculator checkout release/stage && git -C ffs-laminations-calculator merge -m'stage release' release/dev && git -C ffs-laminations-calculator push
echo "

----- START ffs-lta-calculator -----"; git -C ffs-lta-calculator checkout release/stage && git -C ffs-lta-calculator merge -m'stage release' release/dev && git -C ffs-lta-calculator push
echo "

----- START ffs-misalignment-calculator -----"; git -C ffs-misalignment-calculator checkout release/stage && git -C ffs-misalignment-calculator merge -m'stage release' release/dev && git -C ffs-misalignment-calculator push
echo "

----- START ffs-pitting-calculator -----"; git -C ffs-pitting-calculator checkout release/stage && git -C ffs-pitting-calculator merge -m'stage release' release/dev && git -C ffs-pitting-calculator push
echo "

----- START ffs-thinning-calculator -----"; git -C ffs-thinning-calculator checkout release/stage && git -C ffs-thinning-calculator merge -m'stage release' release/dev && git -C ffs-thinning-calculator push
echo "

----- START flange-calculator -----"; git -C flange-calculator checkout release/stage && git -C flange-calculator merge -m'stage release' release/dev && git -C flange-calculator push
echo "

----- START hottap-calculator -----"; git -C hottap-calculator checkout release/stage && git -C hottap-calculator merge -m'stage release' release/dev && git -C hottap-calculator push
echo "

----- START htha-calculator -----"; git -C htha-calculator checkout release/stage && git -C htha-calculator merge -m'stage release' release/dev && git -C htha-calculator push
echo "

----- START htha-steady-state-calculator -----"; git -C htha-steady-state-calculator checkout release/stage && git -C htha-steady-state-calculator merge -m'stage release' release/dev && git -C htha-steady-state-calculator push
echo "

----- START idinterp-calculator -----"; git -C idinterp-calculator checkout release/stage && git -C idinterp-calculator merge -m'stage release' release/dev && git -C idinterp-calculator push
echo "

----- START inspection-report-calculator -----"; git -C inspection-report-calculator checkout release/stage && git -C inspection-report-calculator merge -m'stage release' release/dev && git -C inspection-report-calculator push
echo "

----- START insulation-calculator -----"; git -C insulation-calculator checkout release/stage && git -C insulation-calculator merge -m'stage release' release/dev && git -C insulation-calculator push
echo "

----- START material-explorer-calculator -----"; git -C material-explorer-calculator checkout release/stage && git -C material-explorer-calculator merge -m'stage release' release/dev && git -C material-explorer-calculator push
echo "

----- START mixer-calculator -----"; git -C mixer-calculator checkout release/stage && git -C mixer-calculator merge -m'stage release' release/dev && git -C mixer-calculator push
echo "

----- START netica-worker-calculator -----"; git -C netica-worker-calculator checkout release/stage && git -C netica-worker-calculator merge -m'stage release' release/dev && git -C netica-worker-calculator push
echo "

----- START nozzle-calculator -----"; git -C nozzle-calculator checkout release/stage && git -C nozzle-calculator merge -m'stage release' release/dev && git -C nozzle-calculator push
echo "

----- START omega-calculator -----"; git -C omega-calculator checkout release/stage && git -C omega-calculator merge -m'stage release' release/dev && git -C omega-calculator push
echo "

----- START pipe-pt-calculator -----"; git -C pipe-pt-calculator checkout release/stage && git -C pipe-pt-calculator merge -m'stage release' release/dev && git -C pipe-pt-calculator push
echo "

----- START pipe-span-calculator -----"; git -C pipe-span-calculator checkout release/stage && git -C pipe-span-calculator merge -m'stage release' release/dev && git -C pipe-span-calculator push
echo "

----- START plausible-profiles-calculator -----"; git -C plausible-profiles-calculator checkout release/stage && git -C plausible-profiles-calculator merge -m'stage release' release/dev && git -C plausible-profiles-calculator push
echo "

----- START plume-calculator -----"; git -C plume-calculator checkout release/stage && git -C plume-calculator merge -m'stage release' release/dev && git -C plume-calculator push
echo "

----- START prd-update-calculator -----"; git -C prd-update-calculator checkout release/stage && git -C prd-update-calculator merge -m'stage release' release/dev && git -C prd-update-calculator push
echo "

----- START rainflow-calculator -----"; git -C rainflow-calculator checkout release/stage && git -C rainflow-calculator merge -m'stage release' release/dev && git -C rainflow-calculator push
echo "

----- START sage-x-calculator -----"; git -C sage-x-calculator checkout release/stage && git -C sage-x-calculator merge -m'stage release' release/dev && git -C sage-x-calculator push
echo "

----- START shell-pt-calculator -----"; git -C shell-pt-calculator checkout release/stage && git -C shell-pt-calculator merge -m'stage release' release/dev && git -C shell-pt-calculator push
echo "

----- START shutdown-calculator -----"; git -C shutdown-calculator checkout release/stage && git -C shutdown-calculator merge -m'stage release' release/dev && git -C shutdown-calculator push
echo "

----- START simflex-calculator -----"; git -C simflex-calculator checkout release/stage && git -C simflex-calculator merge -m'stage release' release/dev && git -C simflex-calculator push
echo "

----- START smooth-bar-fatigue-life-calculator -----"; git -C smooth-bar-fatigue-life-calculator checkout release/stage && git -C smooth-bar-fatigue-life-calculator merge -m'stage release' release/dev && git -C smooth-bar-fatigue-life-calculator push
echo "

----- START stored-energy-calculator -----"; git -C stored-energy-calculator checkout release/stage && git -C stored-energy-calculator merge -m'stage release' release/dev && git -C stored-energy-calculator push
echo "

----- START tank-thickness-calculator -----"; git -C tank-thickness-calculator checkout release/stage && git -C tank-thickness-calculator merge -m'stage release' release/dev && git -C tank-thickness-calculator push
echo "

----- START tank-settlement-calculator -----"; git -C tank-settlement-calculator checkout release/stage && git -C tank-settlement-calculator merge -m'stage release' release/dev && git -C tank-settlement-calculator push
echo "

----- START tbreak-calculator -----"; git -C tbreak-calculator checkout release/stage && git -C tbreak-calculator merge -m'stage release' release/dev && git -C tbreak-calculator push
echo "

----- START thermowells-calculator -----"; git -C thermowells-calculator checkout release/stage && git -C thermowells-calculator merge -m'stage release' release/dev && git -C thermowells-calculator push
echo "

----- START toughness-calculator -----"; git -C toughness-calculator checkout release/stage && git -C toughness-calculator merge -m'stage release' release/dev && git -C toughness-calculator push
echo "

----- START upgrade-calculator -----"; git -C upgrade-calculator checkout release/stage && git -C upgrade-calculator merge -m'stage release' release/dev && git -C upgrade-calculator push
echo "

----- START van-winkle-calculator -----"; git -C van-winkle-calculator checkout release/stage && git -C van-winkle-calculator merge -m'stage release' release/dev && git -C van-winkle-calculator push
echo "

----- START visualization-calculator -----"; git -C visualization-calculator checkout release/stage && git -C visualization-calculator merge -m'stage release' release/dev && git -C visualization-calculator push
echo "

----- START welded-joint-fatigue-life-calculator -----"; git -C welded-joint-fatigue-life-calculator checkout release/stage && git -C welded-joint-fatigue-life-calculator merge -m'stage release' release/dev && git -C welded-joint-fatigue-life-calculator push

#!/bin/bash
mkdir -p ~/Projects/all-calculators
cd ~/Projects/all-calculators
echo "

----- START api-1183-calculator -----"; git -C api-1183-calculator checkout release/prod && git -C api-1183-calculator pull && git -C api-1183-calculator merge -m'prod release' release/stage && git -C api-1183-calculator push
echo "

----- START asme-b31g-calculator -----"; git -C asme-b31g-calculator checkout release/prod && git -C asme-b31g-calculator pull && git -C asme-b31g-calculator merge -m'prod release' release/stage && git -C asme-b31g-calculator push
echo "

----- START bakeout-calculator -----"; git -C bakeout-calculator checkout release/prod && git -C bakeout-calculator pull && git -C bakeout-calculator merge -m'prod release' release/stage && git -C bakeout-calculator push
echo "

----- START bayes-calculator -----"; git -C bayes-calculator checkout release/prod && git -C bayes-calculator pull && git -C bayes-calculator merge -m'prod release' release/stage && git -C bayes-calculator push
echo "

----- START bayes-worker-calculator -----"; git -C bayes-worker-calculator checkout release/prod && git -C bayes-worker-calculator pull && git -C bayes-worker-calculator merge -m'prod release' release/stage && git -C bayes-worker-calculator push
echo "

----- START bengi-worker-calculator -----"; git -C bengi-worker-calculator checkout release/prod && git -C bengi-worker-calculator pull && git -C bengi-worker-calculator merge -m'prod release' release/stage && git -C bengi-worker-calculator push
echo "

----- START best-rate-calculator -----"; git -C best-rate-calculator checkout release/prod && git -C best-rate-calculator pull && git -C best-rate-calculator merge -m'prod release' release/stage && git -C best-rate-calculator push
echo "

----- START bijlaard-calculator -----"; git -C bijlaard-calculator checkout release/prod && git -C bijlaard-calculator pull && git -C bijlaard-calculator merge -m'prod release' release/stage && git -C bijlaard-calculator push
echo "

----- START boiler-tube-calculator -----"; git -C boiler-tube-calculator checkout release/prod && git -C boiler-tube-calculator pull && git -C boiler-tube-calculator merge -m'prod release' release/stage && git -C boiler-tube-calculator push
echo "

----- START buried-pipelines-calculator -----"; git -C buried-pipelines-calculator checkout release/prod && git -C buried-pipelines-calculator pull && git -C buried-pipelines-calculator merge -m'prod release' release/stage && git -C buried-pipelines-calculator push
echo "

----- START branch-calculator -----"; git -C branch-calculator checkout release/prod && git -C branch-calculator pull && git -C branch-calculator merge -m'prod release' release/stage && git -C branch-calculator push
echo "

----- START bundle-sight-calculator -----"; git -C bundle-sight-calculator checkout release/prod && git -C bundle-sight-calculator pull && git -C bundle-sight-calculator merge -m'prod release' release/stage && git -C bundle-sight-calculator push
echo "

----- START burstp-calculator -----"; git -C burstp-calculator checkout release/prod && git -C burstp-calculator pull && git -C burstp-calculator merge -m'prod release' release/stage && git -C burstp-calculator push
echo "

----- START calculix-worker-calculator -----"; git -C calculix-worker-calculator checkout release/prod && git -C calculix-worker-calculator pull && git -C calculix-worker-calculator merge -m'prod release' release/stage && git -C calculix-worker-calculator push
echo "

----- START charpy-calculator -----"; git -C charpy-calculator checkout release/prod && git -C charpy-calculator pull && git -C charpy-calculator merge -m'prod release' release/stage && git -C charpy-calculator push
echo "

----- START circuit-corrosion-calculator -----"; git -C circuit-corrosion-calculator checkout release/prod && git -C circuit-corrosion-calculator pull && git -C circuit-corrosion-calculator merge -m'prod release' release/stage && git -C circuit-corrosion-calculator push
echo "

----- START corroding-pipe-life-calculator -----"; git -C corroding-pipe-life-calculator checkout release/prod && git -C corroding-pipe-life-calculator pull && git -C corroding-pipe-life-calculator merge -m'prod release' release/stage && git -C corroding-pipe-life-calculator push
echo "

----- START cp-design-calculator -----"; git -C cp-design-calculator checkout release/prod && git -C cp-design-calculator pull && git -C cp-design-calculator merge -m'prod release' release/stage && git -C cp-design-calculator push
echo "

----- START cp-design-offshore-calculator -----"; git -C cp-design-offshore-calculator checkout release/prod && git -C cp-design-offshore-calculator pull && git -C cp-design-offshore-calculator merge -m'prod release' release/stage && git -C cp-design-offshore-calculator push
echo "

----- START crack-attack-calculator -----"; git -C crack-attack-calculator checkout release/prod && git -C crack-attack-calculator pull && git -C crack-attack-calculator merge -m'prod release' release/stage && git -C crack-attack-calculator push
echo "

----- START lot-centered-analysis-calculator -----"; git -C lot-centered-analysis-calculator checkout release/prod && git -C lot-centered-analysis-calculator pull && git -C lot-centered-analysis-calculator merge -m'prod release' release/stage && git -C lot-centered-analysis-calculator push
echo "

----- START creep-life-calculator -----"; git -C creep-life-calculator checkout release/prod && git -C creep-life-calculator pull && git -C creep-life-calculator merge -m'prod release' release/stage && git -C creep-life-calculator push
echo "

----- START cui-calculator -----"; git -C cui-calculator checkout release/prod && git -C cui-calculator pull && git -C cui-calculator merge -m'prod release' release/stage && git -C cui-calculator push
echo "

----- START damage-sight-calculator -----"; git -C damage-sight-calculator checkout release/prod && git -C damage-sight-calculator pull && git -C damage-sight-calculator merge -m'prod release' release/stage && git -C damage-sight-calculator push
echo "

----- START dent-fea-calculator -----"; git -C dent-fea-calculator checkout release/prod && git -C dent-fea-calculator pull && git -C dent-fea-calculator merge -m'prod release' release/stage && git -C dent-fea-calculator push
echo "

----- START exemption-calculator -----"; git -C exemption-calculator checkout release/prod && git -C exemption-calculator pull && git -C exemption-calculator merge -m'prod release' release/stage && git -C exemption-calculator push
echo "

----- START fast2-calculator -----"; git -C fast2-calculator checkout release/prod && git -C fast2-calculator pull && git -C fast2-calculator merge -m'prod release' release/stage && git -C fast2-calculator push
echo "

----- START fatigue-calculator -----"; git -C fatigue-calculator checkout release/prod && git -C fatigue-calculator pull && git -C fatigue-calculator merge -m'prod release' release/stage && git -C fatigue-calculator push
echo "

----- START fatigue-damage-calculator -----"; git -C fatigue-damage-calculator checkout release/prod && git -C fatigue-damage-calculator pull && git -C fatigue-damage-calculator merge -m'prod release' release/stage && git -C fatigue-damage-calculator push
echo "

----- START fatigue-data-explorer-calculator -----"; git -C fatigue-data-explorer-calculator checkout release/prod && git -C fatigue-data-explorer-calculator pull && git -C fatigue-data-explorer-calculator merge -m'prod release' release/stage && git -C fatigue-data-explorer-calculator push
echo "

----- START fea-visualization-calculator -----"; git -C fea-visualization-calculator checkout release/prod && git -C fea-visualization-calculator pull && git -C fea-visualization-calculator merge -m'prod release' release/stage && git -C fea-visualization-calculator push
echo "

----- START feature-identification-calculator -----"; git -C feature-identification-calculator checkout release/prod && git -C feature-identification-calculator pull && git -C feature-identification-calculator merge -m'prod release' release/stage && git -C feature-identification-calculator push
echo "

----- START ffs-brittle-calculator -----"; git -C ffs-brittle-calculator checkout release/prod && git -C ffs-brittle-calculator pull && git -C ffs-brittle-calculator merge -m'prod release' release/stage && git -C ffs-brittle-calculator push
echo "

----- START ffs-cracking-calculator -----"; git -C ffs-cracking-calculator checkout release/prod && git -C ffs-cracking-calculator pull && git -C ffs-cracking-calculator merge -m'prod release' release/stage && git -C ffs-cracking-calculator push
echo "

----- START ffs-creep-calculator -----"; git -C ffs-creep-calculator checkout release/prod && git -C ffs-creep-calculator pull && git -C ffs-creep-calculator merge -m'prod release' release/stage && git -C ffs-creep-calculator push
echo "

----- START ffs-dent-gouge-calculator -----"; git -C ffs-dent-gouge-calculator checkout release/prod && git -C ffs-dent-gouge-calculator pull && git -C ffs-dent-gouge-calculator merge -m'prod release' release/stage && git -C ffs-dent-gouge-calculator push
echo "

----- START ffs-fire-damage-calculator -----"; git -C ffs-fire-damage-calculator checkout release/prod && git -C ffs-fire-damage-calculator pull && git -C ffs-fire-damage-calculator merge -m'prod release' release/stage && git -C ffs-fire-damage-calculator push
echo "

----- START ffs-hydrogen-calculator -----"; git -C ffs-hydrogen-calculator checkout release/prod && git -C ffs-hydrogen-calculator pull && git -C ffs-hydrogen-calculator merge -m'prod release' release/stage && git -C ffs-hydrogen-calculator push
echo "

----- START ffs-laminations-calculator -----"; git -C ffs-laminations-calculator checkout release/prod && git -C ffs-laminations-calculator pull && git -C ffs-laminations-calculator merge -m'prod release' release/stage && git -C ffs-laminations-calculator push
echo "

----- START ffs-lta-calculator -----"; git -C ffs-lta-calculator checkout release/prod && git -C ffs-lta-calculator pull && git -C ffs-lta-calculator merge -m'prod release' release/stage && git -C ffs-lta-calculator push
echo "

----- START ffs-misalignment-calculator -----"; git -C ffs-misalignment-calculator checkout release/prod && git -C ffs-misalignment-calculator pull && git -C ffs-misalignment-calculator merge -m'prod release' release/stage && git -C ffs-misalignment-calculator push
echo "

----- START ffs-pitting-calculator -----"; git -C ffs-pitting-calculator checkout release/prod && git -C ffs-pitting-calculator pull && git -C ffs-pitting-calculator merge -m'prod release' release/stage && git -C ffs-pitting-calculator push
echo "

----- START ffs-thinning-calculator -----"; git -C ffs-thinning-calculator checkout release/prod && git -C ffs-thinning-calculator pull && git -C ffs-thinning-calculator merge -m'prod release' release/stage && git -C ffs-thinning-calculator push
echo "

----- START flange-calculator -----"; git -C flange-calculator checkout release/prod && git -C flange-calculator pull && git -C flange-calculator merge -m'prod release' release/stage && git -C flange-calculator push
echo "

----- START hottap-calculator -----"; git -C hottap-calculator checkout release/prod && git -C hottap-calculator pull && git -C hottap-calculator merge -m'prod release' release/stage && git -C hottap-calculator push
echo "

----- START htha-calculator -----"; git -C htha-calculator checkout release/prod && git -C htha-calculator pull && git -C htha-calculator merge -m'prod release' release/stage && git -C htha-calculator push
echo "

----- START htha-steady-state-calculator -----"; git -C htha-steady-state-calculator checkout release/prod && git -C htha-steady-state-calculator pull && git -C htha-steady-state-calculator merge -m'prod release' release/stage && git -C htha-steady-state-calculator push
echo "

----- START idinterp-calculator -----"; git -C idinterp-calculator checkout release/prod && git -C idinterp-calculator pull && git -C idinterp-calculator merge -m'prod release' release/stage && git -C idinterp-calculator push
echo "

----- START inspection-report-calculator -----"; git -C inspection-report-calculator checkout release/prod && git -C inspection-report-calculator pull && git -C inspection-report-calculator merge -m'prod release' release/stage && git -C inspection-report-calculator push
echo "

----- START insulation-calculator -----"; git -C insulation-calculator checkout release/prod && git -C insulation-calculator pull && git -C insulation-calculator merge -m'prod release' release/stage && git -C insulation-calculator push
echo "

----- START large-lta-calculator -----"; git -C large-lta-calculator checkout release/prod && git -C large-lta-calculator pull && git -C large-lta-calculator merge -m'prod release' release/stage && git -C large-lta-calculator push
echo "

----- START material-explorer-calculator -----"; git -C material-explorer-calculator checkout release/prod && git -C material-explorer-calculator pull && git -C material-explorer-calculator merge -m'prod release' release/stage && git -C material-explorer-calculator push
echo "

----- START mixer-calculator -----"; git -C mixer-calculator checkout release/prod && git -C mixer-calculator pull && git -C mixer-calculator merge -m'prod release' release/stage && git -C mixer-calculator push
echo "

----- START netica-worker-calculator -----"; git -C netica-worker-calculator checkout release/prod && git -C netica-worker-calculator pull && git -C netica-worker-calculator merge -m'prod release' release/stage && git -C netica-worker-calculator push
echo "

----- START nozzle-calculator -----"; git -C nozzle-calculator checkout release/prod && git -C nozzle-calculator pull && git -C nozzle-calculator merge -m'prod release' release/stage && git -C nozzle-calculator push
echo "

----- START omega-calculator -----"; git -C omega-calculator checkout release/prod && git -C omega-calculator pull && git -C omega-calculator merge -m'prod release' release/stage && git -C omega-calculator push
echo "

----- START pipe-pt-calculator -----"; git -C pipe-pt-calculator checkout release/prod && git -C pipe-pt-calculator pull && git -C pipe-pt-calculator merge -m'prod release' release/stage && git -C pipe-pt-calculator push
echo "

----- START pipe-span-calculator -----"; git -C pipe-span-calculator checkout release/prod && git -C pipe-span-calculator pull && git -C pipe-span-calculator merge -m'prod release' release/stage && git -C pipe-span-calculator push
echo "

----- START plausible-profiles-calculator -----"; git -C plausible-profiles-calculator checkout release/prod && git -C plausible-profiles-calculator pull && git -C plausible-profiles-calculator merge -m'prod release' release/stage && git -C plausible-profiles-calculator push
echo "

----- START plume-calculator -----"; git -C plume-calculator checkout release/prod && git -C plume-calculator pull && git -C plume-calculator merge -m'prod release' release/stage && git -C plume-calculator push
echo "

----- START prd-update-calculator -----"; git -C prd-update-calculator checkout release/prod && git -C prd-update-calculator pull && git -C prd-update-calculator merge -m'prod release' release/stage && git -C prd-update-calculator push
echo "

----- START rainflow-calculator -----"; git -C rainflow-calculator checkout release/prod && git -C rainflow-calculator pull && git -C rainflow-calculator merge -m'prod release' release/stage && git -C rainflow-calculator push
echo "

----- START sage-x-calculator -----"; git -C sage-x-calculator checkout release/prod && git -C sage-x-calculator pull && git -C sage-x-calculator merge -m'prod release' release/stage && git -C sage-x-calculator push
echo "

----- START salome-worker-calculator -----"; git -C salome-worker-calculator checkout release/prod && git -C salome-worker-calculator pull && git -C salome-worker-calculator merge -m'prod release' release/stage && git -C salome-worker-calculator push
echo "

----- START shell-pt-calculator -----"; git -C shell-pt-calculator checkout release/prod && git -C shell-pt-calculator pull && git -C shell-pt-calculator merge -m'prod release' release/stage && git -C shell-pt-calculator push
echo "

----- START shutdown-calculator -----"; git -C shutdown-calculator checkout release/prod && git -C shutdown-calculator pull && git -C shutdown-calculator merge -m'prod release' release/stage && git -C shutdown-calculator push
echo "

----- START simflex-calculator -----"; git -C simflex-calculator checkout release/prod && git -C simflex-calculator pull && git -C simflex-calculator merge -m'prod release' release/stage && git -C simflex-calculator push
echo "

----- START smooth-bar-fatigue-life-calculator -----"; git -C smooth-bar-fatigue-life-calculator checkout release/prod && git -C smooth-bar-fatigue-life-calculator pull && git -C smooth-bar-fatigue-life-calculator merge -m'prod release' release/stage && git -C smooth-bar-fatigue-life-calculator push
echo "

----- START stored-energy-calculator -----"; git -C stored-energy-calculator checkout release/prod && git -C stored-energy-calculator pull && git -C stored-energy-calculator merge -m'prod release' release/stage && git -C stored-energy-calculator push
echo "

----- START tank-thickness-calculator -----"; git -C tank-thickness-calculator checkout release/prod && git -C tank-thickness-calculator pull && git -C tank-thickness-calculator merge -m'prod release' release/stage && git -C tank-thickness-calculator push
echo "

----- START tank-settlement-calculator -----"; git -C tank-settlement-calculator checkout release/prod && git -C tank-settlement-calculator pull && git -C tank-settlement-calculator merge -m'prod release' release/stage && git -C tank-settlement-calculator push
echo "

----- START tank-settlement-fea-calculator -----"; git -C tank-settlement-fea-calculator checkout release/prod && git -C tank-settlement-fea-calculator pull && git -C tank-settlement-fea-calculator merge -m'prod release' release/stage && git -C tank-settlement-fea-calculator push
echo "

----- START tbreak-calculator -----"; git -C tbreak-calculator checkout release/prod && git -C tbreak-calculator pull && git -C tbreak-calculator merge -m'prod release' release/stage && git -C tbreak-calculator push
echo "

----- START thermowells-calculator -----"; git -C thermowells-calculator checkout release/prod && git -C thermowells-calculator pull && git -C thermowells-calculator merge -m'prod release' release/stage && git -C thermowells-calculator push
echo "

----- START toughness-calculator -----"; git -C toughness-calculator checkout release/prod && git -C toughness-calculator pull && git -C toughness-calculator merge -m'prod release' release/stage && git -C toughness-calculator push
echo "

----- START van-winkle-calculator -----"; git -C van-winkle-calculator checkout release/prod && git -C van-winkle-calculator pull && git -C van-winkle-calculator merge -m'prod release' release/stage && git -C van-winkle-calculator push
echo "

----- START welded-joint-fatigue-life-calculator -----"; git -C welded-joint-fatigue-life-calculator checkout release/prod && git -C welded-joint-fatigue-life-calculator pull && git -C welded-joint-fatigue-life-calculator merge -m'prod release' release/stage && git -C welded-joint-fatigue-life-calculator push

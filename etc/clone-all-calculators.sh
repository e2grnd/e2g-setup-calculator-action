#!/bin/bash
mkdir -p ~/Projects/all-calculators
cd ~/Projects/all-calculators
echo "

----- START api-1183-calculator -----"; git -C api-1183-calculator checkout release/dev || git clone 'git@github.com:e2grnd/api-1183-calculator.git' && git -C api-1183-calculator pull
echo "

----- START asme-b31g-calculator -----"; git -C asme-b31g-calculator checkout release/dev || git clone 'git@github.com:e2grnd/asme-b31g-calculator.git' && git -C asme-b31g-calculator pull
echo "

----- START asset-batch-jobs-calculator -----"; git -C asset-batch-jobs-calculator checkout release/dev || git clone 'git@github.com:e2grnd/asset-batch-jobs-calculator.git' && git -C asset-batch-jobs-calculator pull
echo "

----- START bakeout-calculator -----"; git -C bakeout-calculator checkout release/dev || git clone 'git@github.com:e2grnd/bakeout-calculator.git' && git -C bakeout-calculator pull
echo "

----- START bengi-worker-calculator -----"; git -C bengi-worker-calculator checkout release/dev || git clone 'git@github.com:e2grnd/bengi-worker-calculator.git' && git -C bengi-worker-calculator pull
echo "

----- START best-rate-calculator -----"; git -C best-rate-calculator checkout release/dev || git clone 'git@github.com:e2grnd/best-rate-calculator.git' && git -C best-rate-calculator pull
echo "

----- START bijlaard-calculator -----"; git -C bijlaard-calculator checkout release/dev || git clone 'git@github.com:e2grnd/bijlaard-calculator.git' && git -C bijlaard-calculator pull
echo "

----- START boar-calculator -----"; git -C boar-calculator checkout release/dev || git clone 'git@github.com:e2grnd/boar-calculator.git' && git -C boar-calculator pull
echo "

----- START boiler-tube-calculator -----"; git -C boiler-tube-calculator checkout release/dev || git clone 'git@github.com:e2grnd/boiler-tube-calculator.git' && git -C boiler-tube-calculator pull
echo "

----- START buried-pipelines-calculator -----"; git -C buried-pipelines-calculator checkout release/dev || git clone 'git@github.com:e2grnd/buried-pipelines-calculator.git' && git -C buried-pipelines-calculator pull
echo "

----- START branch-calculator -----"; git -C branch-calculator checkout release/dev || git clone 'git@github.com:e2grnd/branch-calculator.git' && git -C branch-calculator pull
echo "

----- START bundle-sight-calculator -----"; git -C bundle-sight-calculator checkout release/dev || git clone 'git@github.com:e2grnd/bundle-sight-calculator.git' && git -C bundle-sight-calculator pull
echo "

----- START burstp-calculator -----"; git -C burstp-calculator checkout release/dev || git clone 'git@github.com:e2grnd/burstp-calculator.git' && git -C burstp-calculator pull
echo "

----- START calculix-worker-calculator -----"; git -C calculix-worker-calculator checkout release/dev || git clone 'git@github.com:e2grnd/calculix-worker-calculator.git' && git -C calculix-worker-calculator pull
echo "

----- START charpy-calculator -----"; git -C charpy-calculator checkout release/dev || git clone 'git@github.com:e2grnd/charpy-calculator.git' && git -C charpy-calculator pull
echo "

----- START circuit-corrosion-calculator -----"; git -C circuit-corrosion-calculator checkout release/dev || git clone 'git@github.com:e2grnd/circuit-corrosion-calculator.git' && git -C circuit-corrosion-calculator pull
echo "

----- START coke-drum-fea-calculator -----"; git -C coke-drum-fea-calculator checkout release/dev || git clone 'git@github.com:e2grnd/coke-drum-fea-calculator.git' && git -C coke-drum-fea-calculator pull
echo "

----- START corroding-pipe-life-calculator -----"; git -C corroding-pipe-life-calculator checkout release/dev || git clone 'git@github.com:e2grnd/corroding-pipe-life-calculator.git' && git -C corroding-pipe-life-calculator pull
echo "

----- START cp-design-calculator -----"; git -C cp-design-calculator checkout release/dev || git clone 'git@github.com:e2grnd/cp-design-calculator.git' && git -C cp-design-calculator pull
echo "

----- START cp-design-offshore-calculator -----"; git -C cp-design-offshore-calculator checkout release/dev || git clone 'git@github.com:e2grnd/cp-design-offshore-calculator.git' && git -C cp-design-offshore-calculator pull
echo "

----- START crack-attack-calculator -----"; git -C crack-attack-calculator checkout release/dev || git clone 'git@github.com:e2grnd/crack-attack-calculator.git' && git -C crack-attack-calculator pull
echo "

----- START lot-centered-analysis-calculator -----"; git -C lot-centered-analysis-calculator checkout release/dev || git clone 'git@github.com:e2grnd/lot-centered-analysis-calculator.git' && git -C lot-centered-analysis-calculator pull
echo "

----- START creep-life-calculator -----"; git -C creep-life-calculator checkout release/dev || git clone 'git@github.com:e2grnd/creep-life-calculator.git' && git -C creep-life-calculator pull
echo "

----- START cui-calculator -----"; git -C cui-calculator checkout release/dev || git clone 'git@github.com:e2grnd/cui-calculator.git' && git -C cui-calculator pull
echo "

----- START damage-sight-calculator -----"; git -C damage-sight-calculator checkout release/dev || git clone 'git@github.com:e2grnd/damage-sight-calculator.git' && git -C damage-sight-calculator pull
echo "

----- START deep-thought-calculator -----"; git -C deep-thought-calculator checkout release/dev || git clone 'git@github.com:e2grnd/deep-thought-calculator.git' && git -C deep-thought-calculator pull
echo "

----- START dent-fea-calculator -----"; git -C dent-fea-calculator checkout release/dev || git clone 'git@github.com:e2grnd/dent-fea-calculator.git' && git -C dent-fea-calculator pull
echo "

----- START exemption-calculator -----"; git -C exemption-calculator checkout release/dev || git clone 'git@github.com:e2grnd/exemption-calculator.git' && git -C exemption-calculator pull
echo "

----- START fast2-calculator -----"; git -C fast2-calculator checkout release/dev || git clone 'git@github.com:e2grnd/fast2-calculator.git' && git -C fast2-calculator pull
echo "

----- START fatigue-calculator -----"; git -C fatigue-calculator checkout release/dev || git clone 'git@github.com:e2grnd/fatigue-calculator.git' && git -C fatigue-calculator pull
echo "

----- START fatigue-damage-calculator -----"; git -C fatigue-damage-calculator checkout release/dev || git clone 'git@github.com:e2grnd/fatigue-damage-calculator.git' && git -C fatigue-damage-calculator pull
echo "

----- START fatigue-data-explorer-calculator -----"; git -C fatigue-data-explorer-calculator checkout release/dev || git clone 'git@github.com:e2grnd/fatigue-data-explorer-calculator.git' && git -C fatigue-data-explorer-calculator pull
echo "

----- START fea-visualization-calculator -----"; git -C fea-visualization-calculator checkout release/dev || git clone 'git@github.com:e2grnd/fea-visualization-calculator.git' && git -C fea-visualization-calculator pull
echo "

----- START feature-identification-calculator -----"; git -C feature-identification-calculator checkout release/dev || git clone 'git@github.com:e2grnd/feature-identification-calculator.git' && git -C feature-identification-calculator pull
echo "

----- START ffs-brittle-calculator -----"; git -C ffs-brittle-calculator checkout release/dev || git clone 'git@github.com:e2grnd/ffs-brittle-calculator.git' && git -C ffs-brittle-calculator pull
echo "

----- START ffs-cracking-calculator -----"; git -C ffs-cracking-calculator checkout release/dev || git clone 'git@github.com:e2grnd/ffs-cracking-calculator.git' && git -C ffs-cracking-calculator pull
echo "

----- START ffs-creep-calculator -----"; git -C ffs-creep-calculator checkout release/dev || git clone 'git@github.com:e2grnd/ffs-creep-calculator.git' && git -C ffs-creep-calculator pull
echo "

----- START ffs-dent-gouge-calculator -----"; git -C ffs-dent-gouge-calculator checkout release/dev || git clone 'git@github.com:e2grnd/ffs-dent-gouge-calculator.git' && git -C ffs-dent-gouge-calculator pull
echo "

----- START ffs-fire-damage-calculator -----"; git -C ffs-fire-damage-calculator checkout release/dev || git clone 'git@github.com:e2grnd/ffs-fire-damage-calculator.git' && git -C ffs-fire-damage-calculator pull
echo "

----- START ffs-hydrogen-calculator -----"; git -C ffs-hydrogen-calculator checkout release/dev || git clone 'git@github.com:e2grnd/ffs-hydrogen-calculator.git' && git -C ffs-hydrogen-calculator pull
echo "

----- START ffs-laminations-calculator -----"; git -C ffs-laminations-calculator checkout release/dev || git clone 'git@github.com:e2grnd/ffs-laminations-calculator.git' && git -C ffs-laminations-calculator pull
echo "

----- START ffs-lta-calculator -----"; git -C ffs-lta-calculator checkout release/dev || git clone 'git@github.com:e2grnd/ffs-lta-calculator.git' && git -C ffs-lta-calculator pull
echo "

----- START ffs-misalignment-calculator -----"; git -C ffs-misalignment-calculator checkout release/dev || git clone 'git@github.com:e2grnd/ffs-misalignment-calculator.git' && git -C ffs-misalignment-calculator pull
echo "

----- START ffs-pitting-calculator -----"; git -C ffs-pitting-calculator checkout release/dev || git clone 'git@github.com:e2grnd/ffs-pitting-calculator.git' && git -C ffs-pitting-calculator pull
echo "

----- START ffs-thinning-calculator -----"; git -C ffs-thinning-calculator checkout release/dev || git clone 'git@github.com:e2grnd/ffs-thinning-calculator.git' && git -C ffs-thinning-calculator pull
echo "

----- START flange-calculator -----"; git -C flange-calculator checkout release/dev || git clone 'git@github.com:e2grnd/flange-calculator.git' && git -C flange-calculator pull
echo "

----- START hottap-calculator -----"; git -C hottap-calculator checkout release/dev || git clone 'git@github.com:e2grnd/hottap-calculator.git' && git -C hottap-calculator pull
echo "

----- START htha-calculator -----"; git -C htha-calculator checkout release/dev || git clone 'git@github.com:e2grnd/htha-calculator.git' && git -C htha-calculator pull
echo "

----- START htha-steady-state-calculator -----"; git -C htha-steady-state-calculator checkout release/dev || git clone 'git@github.com:e2grnd/htha-steady-state-calculator.git' && git -C htha-steady-state-calculator pull
echo "

----- START idinterp-calculator -----"; git -C idinterp-calculator checkout release/dev || git clone 'git@github.com:e2grnd/idinterp-calculator.git' && git -C idinterp-calculator pull
echo "

----- START in-sight-calculator -----"; git -C in-sight-calculator checkout release/dev || git clone 'git@github.com:e2grnd/in-sight-calculator.git' && git -C in-sight-calculator pull
echo "

----- START inspection-report-calculator -----"; git -C inspection-report-calculator checkout release/dev || git clone 'git@github.com:e2grnd/inspection-report-calculator.git' && git -C inspection-report-calculator pull
echo "

----- START insulation-calculator -----"; git -C insulation-calculator checkout release/dev || git clone 'git@github.com:e2grnd/insulation-calculator.git' && git -C insulation-calculator pull
echo "

----- START large-lta-calculator -----"; git -C large-lta-calculator checkout release/dev || git clone 'git@github.com:e2grnd/large-lta-calculator.git' && git -C large-lta-calculator pull
echo "

----- START material-explorer-calculator -----"; git -C material-explorer-calculator checkout release/dev || git clone 'git@github.com:e2grnd/material-explorer-calculator.git' && git -C material-explorer-calculator pull
echo "

----- START mixer-calculator -----"; git -C mixer-calculator checkout release/dev || git clone 'git@github.com:e2grnd/mixer-calculator.git' && git -C mixer-calculator pull
echo "

----- START ncpv-nozzle-fea-calculator -----"; git -C ncpv-nozzle-fea-calculator checkout release/dev || git clone 'git@github.com:e2grnd/ncpv-nozzle-fea-calculator.git' && git -C ncpv-nozzle-fea-calculator pull
echo "

----- START netica-worker-calculator -----"; git -C netica-worker-calculator checkout release/dev || git clone 'git@github.com:e2grnd/netica-worker-calculator.git' && git -C netica-worker-calculator pull
echo "

----- START nozzle-calculator -----"; git -C nozzle-calculator checkout release/dev || git clone 'git@github.com:e2grnd/nozzle-calculator.git' && git -C nozzle-calculator pull
echo "

----- START nozzle-fea-calculator -----"; git -C nozzle-fea-calculator checkout release/dev || git clone 'git@github.com:e2grnd/nozzle-fea-calculator.git' && git -C nozzle-fea-calculator pull
echo "

----- START omega-calculator -----"; git -C omega-calculator checkout release/dev || git clone 'git@github.com:e2grnd/omega-calculator.git' && git -C omega-calculator pull
echo "

----- START pipe-pt-calculator -----"; git -C pipe-pt-calculator checkout release/dev || git clone 'git@github.com:e2grnd/pipe-pt-calculator.git' && git -C pipe-pt-calculator pull
echo "

----- START pipe-span-calculator -----"; git -C pipe-span-calculator checkout release/dev || git clone 'git@github.com:e2grnd/pipe-span-calculator.git' && git -C pipe-span-calculator pull
echo "

----- START plausible-profiles-calculator -----"; git -C plausible-profiles-calculator checkout release/dev || git clone 'git@github.com:e2grnd/plausible-profiles-calculator.git' && git -C plausible-profiles-calculator pull
echo "

----- START plume-calculator -----"; git -C plume-calculator checkout release/dev || git clone 'git@github.com:e2grnd/plume-calculator.git' && git -C plume-calculator pull
echo "

----- START prd-update-calculator -----"; git -C prd-update-calculator checkout release/dev || git clone 'git@github.com:e2grnd/prd-update-calculator.git' && git -C prd-update-calculator pull
echo "

----- START pvelite-converter-calculator -----"; git -C pvelite-converter-calculator checkout release/dev || git clone 'git@github.com:e2grnd/pvelite-converter-calculator.git' && git -C pvelite-converter-calculator pull
echo "

----- START rainflow-calculator -----"; git -C rainflow-calculator checkout release/dev || git clone 'git@github.com:e2grnd/rainflow-calculator.git' && git -C rainflow-calculator pull
echo "

----- START rbi-plus-calculator -----"; git -C rbi-plus-calculator checkout release/dev || git clone 'git@github.com:e2grnd/rbi-plus-calculator.git' && git -C rbi-plus-calculator pull
echo "

----- START sage-api-worker-calculator -----"; git -C sage-api-worker-calculator checkout release/dev || git clone 'git@github.com:e2grnd/sage-api-worker-calculator.git' && git -C sage-api-worker-calculator pull
echo "

----- START sage-x-calculator -----"; git -C sage-x-calculator checkout release/dev || git clone 'git@github.com:e2grnd/sage-x-calculator.git' && git -C sage-x-calculator pull
echo "

----- START salome-worker-calculator -----"; git -C salome-worker-calculator checkout release/dev || git clone 'git@github.com:e2grnd/salome-worker-calculator.git' && git -C salome-worker-calculator pull
echo "

----- START sandman-calculator -----"; git -C sandman-calculator checkout release/dev || git clone 'git@github.com:e2grnd/sandman-calculator.git' && git -C sandman-calculator pull
echo "

----- START shell-pt-calculator -----"; git -C shell-pt-calculator checkout release/dev || git clone 'git@github.com:e2grnd/shell-pt-calculator.git' && git -C shell-pt-calculator pull
echo "

----- START shutdown-calculator -----"; git -C shutdown-calculator checkout release/dev || git clone 'git@github.com:e2grnd/shutdown-calculator.git' && git -C shutdown-calculator pull
echo "

----- START simflex-calculator -----"; git -C simflex-calculator checkout release/dev || git clone 'git@github.com:e2grnd/simflex-calculator.git' && git -C simflex-calculator pull
echo "

----- START simflex-converters-calculator -----"; git -C simflex-converters-calculator checkout release/dev || git clone 'git@github.com:e2grnd/simflex-converters-calculator.git' && git -C simflex-converters-calculator pull
echo "

----- START simflex-legacy-calculator -----"; git -C simflex-legacy-calculator checkout release/dev || git clone 'git@github.com:e2grnd/simflex-legacy-calculator.git' && git -C simflex-legacy-calculator pull
echo "

----- START smooth-bar-fatigue-life-calculator -----"; git -C smooth-bar-fatigue-life-calculator checkout release/dev || git clone 'git@github.com:e2grnd/smooth-bar-fatigue-life-calculator.git' && git -C smooth-bar-fatigue-life-calculator pull
echo "

----- START snooze-fest-calculator -----"; git -C snooze-fest-calculator checkout release/dev || git clone 'git@github.com:e2grnd/snooze-fest-calculator.git' && git -C snooze-fest-calculator pull
echo "

----- START sphere-legs-fea-calculator -----"; git -C sphere-legs-fea-calculator checkout release/dev || git clone 'git@github.com:e2grnd/sphere-legs-fea-calculator.git' && git -C sphere-legs-fea-calculator pull
echo "

----- START stored-energy-calculator -----"; git -C stored-energy-calculator checkout release/dev || git clone 'git@github.com:e2grnd/stored-energy-calculator.git' && git -C stored-energy-calculator pull
echo "

----- START tank-thickness-calculator -----"; git -C tank-thickness-calculator checkout release/dev || git clone 'git@github.com:e2grnd/tank-thickness-calculator.git' && git -C tank-thickness-calculator pull
echo "

----- START tank-bottom-optimization-calculator -----"; git -C tank-bottom-optimization-calculator checkout release/dev || git clone 'git@github.com:e2grnd/tank-bottom-optimization-calculator.git' && git -C tank-bottom-optimization-calculator pull
echo "

----- START tank-settlement-calculator -----"; git -C tank-settlement-calculator checkout release/dev || git clone 'git@github.com:e2grnd/tank-settlement-calculator.git' && git -C tank-settlement-calculator pull
echo "

----- START tank-settlement-fea-calculator -----"; git -C tank-settlement-fea-calculator checkout release/dev || git clone 'git@github.com:e2grnd/tank-settlement-fea-calculator.git' && git -C tank-settlement-fea-calculator pull
echo "

----- START tank-sight-calculator -----"; git -C tank-sight-calculator checkout release/dev || git clone 'git@github.com:e2grnd/tank-sight-calculator.git' && git -C tank-sight-calculator pull
echo "

----- START tbreak-calculator -----"; git -C tbreak-calculator checkout release/dev || git clone 'git@github.com:e2grnd/tbreak-calculator.git' && git -C tbreak-calculator pull
echo "

----- START thermowells-calculator -----"; git -C thermowells-calculator checkout release/dev || git clone 'git@github.com:e2grnd/thermowells-calculator.git' && git -C thermowells-calculator pull
echo "

----- START toughness-calculator -----"; git -C toughness-calculator checkout release/dev || git clone 'git@github.com:e2grnd/toughness-calculator.git' && git -C toughness-calculator pull
echo "

----- START van-winkgo-calculator -----"; git -C van-winkgo-calculator checkout release/dev || git clone 'git@github.com:e2grnd/van-winkgo-calculator.git' && git -C van-winkgo-calculator pull
echo "

----- START van-winkle-calculator -----"; git -C van-winkle-calculator checkout release/dev || git clone 'git@github.com:e2grnd/van-winkle-calculator.git' && git -C van-winkle-calculator pull
echo "

----- START welded-joint-fatigue-life-calculator -----"; git -C welded-joint-fatigue-life-calculator checkout release/dev || git clone 'git@github.com:e2grnd/welded-joint-fatigue-life-calculator.git' && git -C welded-joint-fatigue-life-calculator pull

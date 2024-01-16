#!/bin/bash
kubectl rollout restart -n dev deployment/api1183
kubectl rollout restart -n dev deployment/asme-b31g
kubectl rollout restart -n dev deployment/bakeout
kubectl rollout restart -n dev deployment/bayes
kubectl rollout restart -n dev deployment/bayes-worker
kubectl rollout restart -n dev deployment/bengi-worker
kubectl rollout restart -n dev deployment/best-rate
kubectl rollout restart -n dev deployment/bijlaard
kubectl rollout restart -n dev deployment/boiler-tube
kubectl rollout restart -n dev deployment/bpc
kubectl rollout restart -n dev deployment/branch
kubectl rollout restart -n dev deployment/bundle-sight
kubectl rollout restart -n dev deployment/burst-pressure
kubectl rollout restart -n dev deployment/calculix-worker
kubectl rollout restart -n dev deployment/can2-decisions
kubectl rollout restart -n dev deployment/can2-growth-rate
kubectl rollout restart -n dev deployment/can2-series
kubectl rollout restart -n dev deployment/canister-temperature
kubectl rollout restart -n dev deployment/charpy
kubectl rollout restart -n dev deployment/circuit-corrosion
kubectl rollout restart -n dev deployment/corr-solutions
kubectl rollout restart -n dev deployment/corroding-pipe-life
kubectl rollout restart -n dev deployment/cp-design
kubectl rollout restart -n dev deployment/cp-design-offshore
kubectl rollout restart -n dev deployment/crack-attack
kubectl rollout restart -n dev deployment/creep
kubectl rollout restart -n dev deployment/creep-life
kubectl rollout restart -n dev deployment/cui-sight
kubectl rollout restart -n dev deployment/damage-sight
kubectl rollout restart -n dev deployment/dent-fea
kubectl rollout restart -n dev deployment/deposition-density
kubectl rollout restart -n dev deployment/epri-amp
kubectl rollout restart -n dev deployment/exemption
kubectl rollout restart -n dev deployment/fast2
kubectl rollout restart -n dev deployment/fatigue
kubectl rollout restart -n dev deployment/fatigue-damage
kubectl rollout restart -n dev deployment/fatigue-data-explorer
kubectl rollout restart -n dev deployment/fea-visualization
kubectl rollout restart -n dev deployment/feature-identification
kubectl rollout restart -n dev deployment/ffs-brittle
kubectl rollout restart -n dev deployment/ffs-crack-like
kubectl rollout restart -n dev deployment/ffs-creep
kubectl rollout restart -n dev deployment/ffs-dent-gouge
kubectl rollout restart -n dev deployment/ffs-fire-damage
kubectl rollout restart -n dev deployment/ffs-hydrogen
kubectl rollout restart -n dev deployment/ffs-lamination
kubectl rollout restart -n dev deployment/ffs-lta
kubectl rollout restart -n dev deployment/ffs-misalignment
kubectl rollout restart -n dev deployment/ffs-pitting
kubectl rollout restart -n dev deployment/ffs-thinning
kubectl rollout restart -n dev deployment/flange
kubectl rollout restart -n dev deployment/hottap
kubectl rollout restart -n dev deployment/htha
kubectl rollout restart -n dev deployment/htha-steady-state
kubectl rollout restart -n dev deployment/idinterp
kubectl rollout restart -n dev deployment/inspection-report
kubectl rollout restart -n dev deployment/insulation
kubectl rollout restart -n dev deployment/large-lta
kubectl rollout restart -n dev deployment/material-explorer
kubectl rollout restart -n dev deployment/mixer
kubectl rollout restart -n dev deployment/netica-worker
kubectl rollout restart -n dev deployment/nozzle
kubectl rollout restart -n dev deployment/omega
kubectl rollout restart -n dev deployment/pipe
kubectl rollout restart -n dev deployment/pipe-span
kubectl rollout restart -n dev deployment/pitting-corrosion-rate
kubectl rollout restart -n dev deployment/plausible-profiles
kubectl rollout restart -n dev deployment/plume
kubectl rollout restart -n dev deployment/prd-update
kubectl rollout restart -n dev deployment/rainflow
kubectl rollout restart -n dev deployment/sage-x
kubectl rollout restart -n dev deployment/salome-worker
kubectl rollout restart -n dev deployment/shell
kubectl rollout restart -n dev deployment/shutdown
kubectl rollout restart -n dev deployment/simflex
kubectl rollout restart -n dev deployment/smooth-bar-fatigue
kubectl rollout restart -n dev deployment/stored-energy
kubectl rollout restart -n dev deployment/tank
kubectl rollout restart -n dev deployment/tank-settlement
kubectl rollout restart -n dev deployment/tank-settlement-fea
kubectl rollout restart -n dev deployment/tbreak
kubectl rollout restart -n dev deployment/thermowell
kubectl rollout restart -n dev deployment/toughness
kubectl rollout restart -n dev deployment/van-winkle
kubectl rollout restart -n dev deployment/weather-data
kubectl rollout restart -n dev deployment/weld-residual-stress
kubectl rollout restart -n dev deployment/welded-joint-fatigue

import kebab from 'lodash.kebabcase'

export type CalcConfig = {
  /**
   * The name of the container image in the registry
   */
  imageName: string
  /**
   * The name of the service directory in the kustomize repo
   */
  serviceName: string
  /**
   * If true, the repo is omitted from the sync config and the syncing of common
   * support files (actions) to the repo will be disabled.
   */
  noSync?: boolean
  /**
   * The target deployment repo name
   * @default false
   */
  deploymentRepo: 'eec-kustomize' | 'corrsolutions-kustomize'
  /**
   * Syncs the bayes docker compose configuration in addition to base.
   * @default false
   */
  enableBayesContainers?: boolean
  /**
   * If true, syncs the trame github action for building the visualization image.
   */
  trame?: boolean
  /**
   * If true, syncs the
   */
  remoteFEA?: boolean

  /**
   * If true, an arm64 container image will not be built for this calculator.
   */
  notArmCompatible?: boolean

  /**
   * If true, the calc will also be deployed to the azure branch
   */
  deployAzure?: boolean
}

/**
 * This was coppied verbatim from the lib-py config and converted to ts as a
 * quick way to flesh out the CalcConfig array.
 */
type LibPyConfig = {
  name: string
  repo: string
  module?: string
  function?: string
  deprecated?: boolean
} & Partial<CalcConfig>

const libpyConfig: LibPyConfig[] = [
  {
    name: 'idinterp',
    repo: 'idinterp-calculator.git',
    module: 'IDInterp_calculator',
    function: 'calculate_IDInterp',
  },
  // {
  //   name: 'pvelite-converter',
  //   repo: 'pvelite-converter-calculator.git',
  //   module: 'PVEliteConvertor',
  //   function: 'submit_to_pv_elite_convertor',
  // },
  {
    name: 'corrSolutions',
    repo: 'corr-solutions-da-calculator.git',
    module: 'pyDaEecCalculator.Calculator',
    function: 'calculateCorrSolutions',
    notArmCompatible: true,
    serviceName: 'corr-solutions-da',
    imageName: 'corrs-solutions-da',
  },
  {
    name: 'best-rate',
    repo: 'best-rate-calculator.git',
    module: 'bestRateCalc.Calculator',
    function: 'calculateBestRate',
    enableBayesContainers: true,
  },
  {
    name: 'fast2',
    repo: 'fast2-calculator.git',
    module: 'Fast2Calculator.Calculator',
    function: 'submit_fast2_calculation_to_sage',
    serviceName: 'fast2',
    imageName: 'fast2',
  },
  {
    name: 'hthaSteadyState',
    repo: 'htha-steady-state-calculator.git',
    module: 'SteadyCalculator.Calculator',
    function: 'calculate_steady_state_alpha_omega',
  },
  {
    name: 'upgrade',
    repo: 'upgrade-calculator.git',
    module: 'upgradeCalculator.gradeComment',
    function: 'generate_inspection_grade',
    enableBayesContainers: true,
    deprecated: true,
  },
  {
    name: 'openIAM',
    repo: 'openIAMWrapper.git',
    module: 'openIAMWrapperCalc.Calculator',
    function: 'calculate_openIAM',
    deprecated: true,
  },
  {
    name: 'cmlOptimization',
    repo: 'cml-optimization-wrapper-calculator.git',
    module: 'cmlOptimizationWrapperCalc.Calculator',
    function: 'calculate_cmlOptimization',
    noSync: true,
    deprecated: true,
  },
  {
    name: 'htha',
    repo: 'htha-calculator.git',
    module: 'HTHACalculator.Calculators',
    function: 'calculate_htha_damage',
  },
  {
    name: 'bakeout',
    repo: 'bakeout-calculator.git',
    module: 'BakeOut.BakeOutCalculator',
    function: 'calculate_hydrogen_bakeout',
  },
  {
    name: 'mpt',
    repo: 'MPT-backend.git',
    module: 'MPTCalculator.CalculateMPT',
    function: 'calculate_mpt',
    deprecated: true,
  },
  {
    name: 'fatigueDamage',
    repo: 'fatigue-damage-calculator.git',
    module: 'FatigueDamageCalculator.GetInputDictionary',
    function: 'Calculate',
  },
  {
    name: 'fatigue',
    repo: 'fatigue-calculator.git',
    module: 'FatigueDataAnalysisCalculator.sandbox',
    function: 'calculate',
  },
  {
    name: 'fatigueDataExplorer',
    repo: 'fatigue-data-explorer-calculator.git',
    module: 'FatigueExplorerCalculator.sandbox',
    function: 'calculate',
  },
  {
    name: 'weldedJointFatigue',
    repo: 'welded-joint-fatigue-life-calculator.git',
    module: 'WeldedJointCalculator.sandbox',
    function: 'calculate',
  },
  {
    name: 'insulation',
    repo: 'insulation-calculator.git',
    module: 'InsulationCalculator.Calculator',
    function: 'calculate_Insulation_Thickness',
  },
  // {
  //   name: 'circuitCorrosion',
  //   repo: 'cmlwise-calculator.git',
  //   module: 'CMLWiseCalculator.Calculator',
  //   function: 'submit_cmlwise_calculation_to_sage',
  //   deprecated: true,
  // },
  {
    name: 'hottap',
    repo: 'hottap-calculator.git',
    module: 'HottapCalculator.Calculator',
    function: 'submit_hottap_calculation_to_sage',
  },
  {
    name: 'burstPressure',
    repo: 'burstp-calculator.git',
    module: 'BurstpCalculator.Calculator',
    function: 'submit_burstp_calculation_to_sage',
  },
  {
    name: 'exemption',
    repo: 'exemption-calculator.git',
    module: 'ExemptionCurveCalculator.GenerateExemptionCurve',
    function: 'generate_exemption_curves',
  },
  {
    name: 'shutdown',
    repo: 'shutdown-calculator.git',
    module: 'Shutdown.ShutdownCalculator',
    function: 'calculate_hydrogen_shutdown',
  },
  {
    name: 'creepLife',
    repo: 'creep-life-calculator.git',
    module: 'CreepLifeCalculator.creepLife',
    function: 'calculate_creep_life',
  },
  {
    name: 'toughness',
    repo: 'toughness-calculator.git',
    module: 'ToughnessCalculator.CalculateToughnessCurve',
    function: 'calculate_toughness_curve',
  },
  {
    name: 'shell',
    repo: 'shell-pt-calculator.git',
    module: 'ShellPTCalculator',
    function: 'submit_shell_calc_to_sage',
  },
  {
    name: 'pipe',
    repo: 'pipe-pt-calculator.git',
    module: 'PipeCalculator.PipePTCalculator',
    function: 'submit_pipe_pt_calc_to_sage',
  },
  {
    name: 'pipeSpan',
    repo: 'pipe-span-calculator.git',
    module: 'PipeSpanCalculator.Calculator',
    function: 'submit_pipe_span_calc_to_sage',
  },
  {
    name: 'mixer',
    repo: 'mixer-calculator.git',
    module: 'FluidExplorerCalculator.Calculator',
    function: 'submit_mixer_calculation_to_sage',
  },
  {
    name: 'bpc',
    repo: 'buried-pipelines-calculator.git',
    module: 'BPC_Calculator.Calculator',
    function: 'calculate_buried_pipeline_crossings',
  },
  {
    name: 'flange',
    repo: 'flange-calculator.git',
    module: 'FlangeCalculator',
    function: 'submit_flange_calculation_to_sage',
  },
  {
    name: 'asme-b31g',
    serviceName: 'asme-b31g',
    imageName: 'asme-b31g',
    repo: 'asme-b31g-calculator.git',
    module: 'B31GCalculator.Calculator',
    function: 'submit_asmeB31G_calculation_to_sage',
  },
  {
    name: 'materialExplorer',
    repo: 'material-explorer-calculator.git',
    module: 'MatDatCalculator',
    function: 'submit_matdat_calculation_to_sage',
  },
  {
    name: 'charpy',
    repo: 'charpy-calculator.git',
    module: 'CharpyCalculator',
    function: 'submit_charpy_calculation_to_sage',
  },
  {
    name: 'prvSizing',
    repo: 'PRELIEFD-Calculator.git',
    module: 'PRELIEFDCalculator',
    function: 'submit_preliefd_calculation_to_sage',
    deprecated: true,
  },
  {
    name: 'galvanicCorrosion',
    repo: 'GalvanicCorrosionRateApp.git',
    module: 'CalculateGalvanicCorrosion.GetInputDictionary',
    function: 'Calculate',
    deprecated: true,
  },
  {
    name: 'boilerTube',
    repo: 'boiler-tube-calculator.git',
    module: 'BoilerTubeCalculator',
    function: 'submit_boiler_tube_calculation_to_sage',
  },
  {
    name: 'branch',
    repo: 'branch-calculator.git',
    module: 'BranchCalculator.Calculator',
    function: 'submit_branch_calculation_to_sage',
  },
  {
    name: 'corroding-pipe-life',
    repo: 'corroding-pipe-life-calculator.git',
    module: 'ProbCorrFailureCalculator.GetInputDictionary',
    function: 'CalculateFromInputWrapper',
  },
  {
    name: 'cpDesign',
    repo: 'cp-design-calculator.git',
    module: 'CPDesignCalcs.GetInputDictionary',
    function: 'CalculateFromInputWrapper',
  },
  {
    name: 'chaboche',
    repo: 'chabocheFittingNew.git',
    module: 'chabocheFitCalc.GetInputDictionary',
    function: 'Calculate',
    deprecated: true,
  },
  {
    name: 'smoothBarFatigue',
    repo: 'smooth-bar-fatigue-life-calculator.git',
    module: 'SBCalculator.GetInputDictionary',
    function: 'call_calculator',
  },
  {
    name: 'cpDesignOffshore',
    repo: 'cp-design-offshore-calculator.git',
    module: 'CPDesignCalcsOffshore.GetInputDictionary',
    function: 'CalculateFromInputWrapper',
  },
  {
    name: 'coatingQuantity',
    repo: 'coatingQuantityApp.git',
    module: 'CoatingQuantityCalculator.GetInputDictionary',
    function: 'CalculateFromInputWrapper',
    deprecated: true,
  },
  {
    name: 'ffsThinning',
    repo: 'ffs-thinning-calculator.git',
    module: 'FFSThinningCalculator.Calculator',
    function: 'submit_ffsthinning_calculation_to_sage',
  },
  {
    name: 'ffsPitting',
    repo: 'ffs-pitting-calculator.git',
    module: 'FFSPittingCalculator.Calculator',
    function: 'submit_ffspitting_calculation_to_sage',
  },
  {
    name: 'ffsCreep',
    repo: 'ffs-creep-calculator.git',
    module: 'FFSCreepCalculator.Calculator',
    function: 'submit_ffscreep_calculation_to_sage',
  },
  {
    name: 'ffsCrackGrowth',
    repo: 'ffs-crack-growth-calculator.git',
    module: 'CrackGrowthCalculator.Calculator',
    function: 'submit_crack_growth_calculation_to_sage',
    noSync: true,
    deprecated: true,
  },
  {
    name: 'ffsCrackLike',
    repo: 'ffs-cracking-calculator.git',
    module: 'CrackingCalculator.Calculator',
    function: 'submit_apiffs_cracking_calculation_to_sage',
  },
  {
    name: 'ffsBrittle',
    repo: 'ffs-brittle-calculator.git',
    module: 'BrittleCalculator.Calculator',
    function: 'submit_apiffs_brittle_calculation_to_sage',
  },
  {
    name: 'ffsMisalignment',
    repo: 'ffs-misalignment-calculator.git',
    module: 'MisalignmentCalculator.Calculator',
    function: 'submit_apiffs_misalignment_calculation_to_sage',
  },
  {
    name: 'ffsHydrogen',
    repo: 'ffs-hydrogen-calculator.git',
    module: 'HydrogenCalculator.Calculator',
    function: 'submit_apiffs_hydrogen_calculation_to_sage',
  },
  {
    name: 'ffsDentGouge',
    repo: 'ffs-dent-gouge-calculator.git',
    module: 'DentGougeCalculator.Calculator',
    function: 'submit_apiffs_dent_gouge_calculation_to_sage',
  },
  {
    name: 'ffsLamination',
    repo: 'ffs-laminations-calculator.git',
    module: 'LaminationCalculator.Calculator',
    function: 'submit_apiffs_laminations_calculation_to_sage',
  },
  {
    name: 'ffsFireDamage',
    repo: 'ffs-fire-damage-calculator.git',
    module: 'FireDamageCalculator.Calculator',
    function: 'submit_apiffs_fire_damage_calculation_to_sage',
  },
  {
    name: 'creep',
    repo: 'lot-centered-analysis-calculator.git',
    module: 'lotcenteredanalysis.Calculator',
    function: 'calculate_Creep_LMP',
    noSync: true,
  },
  {
    name: 'plffsThinning',
    repo: 'pipeline-ffs-thinning-calculator.git',
    module: 'PipelineThinningCalculator.Calculator',
    function: 'submit_pipeline_ffsthinning_calculation_to_sage',
    deprecated: true,
  },
  {
    name: 'plffsPitting',
    repo: 'pipeline-ffs-pitting-calculator.git',
    module: 'PipelinePittingCalculator.Calculator',
    function: 'submit_pipeline_ffspitting_calculation_to_sage',
    deprecated: true,
  },
  {
    name: 'plffsCreep',
    repo: 'pipeline-ffs-creep-calculator.git',
    module: 'PipelineCreepCalculator.Calculator',
    function: 'submit_pipeline_ffscreep_calculation_to_sage',
    deprecated: true,
  },
  {
    name: 'plffsCrackLike',
    repo: 'pipeline-ffs-cracking-calculator.git',
    module: 'PipelineCrackingCalculator.Calculator',
    function: 'submit_pipeline_apiffs_cracking_calculation_to_sage',
    deprecated: true,
  },
  {
    name: 'plffsBrittle',
    repo: 'pipeline-ffs-brittle-calculator.git',
    module: 'PipelineBrittleCalculator.Calculator',
    function: 'submit_pipeline_apiffs_brittle_calculation_to_sage',
    deprecated: true,
  },
  {
    name: 'plffsMisalignment',
    repo: 'pipeline-ffs-misalignment-calculator.git',
    module: 'PipelineMisalignmentCalculator.Calculator',
    function: 'submit_pipeline_apiffs_misalignment_calculation_to_sage',
    deprecated: true,
  },
  {
    name: 'plffsHydrogen',
    repo: 'pipeline-ffs-hydrogen-calculator.git',
    module: 'PipelineHydrogenCalculator.Calculator',
    function: 'submit_pipeline_apiffs_hydrogen_calculation_to_sage',
    deprecated: true,
  },
  {
    name: 'plffsDentGouge',
    repo: 'pipeline-ffs-dent-gouge-calculator.git',
    module: 'PipelineDentGougeCalculator.Calculator',
    function: 'submit_pipeline_apiffs_dent_gouge_calculation_to_sage',
    deprecated: true,
  },
  {
    name: 'plffsLamination',
    repo: 'pipeline-ffs-laminations-calculator.git',
    module: 'PipelineLaminationCalculator.Calculator',
    function: 'submit_pipeline_apiffs_laminations_calculation_to_sage',
    deprecated: true,
  },
  {
    name: 'plffsFireDamage',
    repo: 'pipeline-ffs-fire-damage-calculator.git',
    module: 'PipelineFireDamageCalculator.Calculator',
    function: 'submit_pipeline_apiffs_fire_damage_calculation_to_sage',
    deprecated: true,
  },
  {
    name: 'simflex',
    repo: 'simflex-calculator.git',
    module: 'SimflexCalc.Calculator',
    function: 'submit_calculation_to_simflex',
    noSync: true,
    notArmCompatible: true,
  },
  {
    name: 'simflex-legacy',
    repo: 'simflex-legacy-calculator.git',
    module: 'SimflexCalc.Calculator',
    function: 'submit_calculation_to_simflex',
    noSync: true,
  },
  {
    name: 'omega',
    repo: 'omega-calculator.git',
    module: 'omegaFitCalculator.omega_plots',
    function: 'calculate_Omega',
  },
  {
    name: 'prdUpdate',
    repo: 'prd-update-calculator.git',
    module: 'PRDCalculator.sandbox',
    function: 'Calculate',
  },
  {
    name: 'nozzle',
    repo: 'nozzle-calculator.git',
    module: 'NozzleCalculator.Calculator',
    function: 'submit_nozzle_calculation_to_sage',
  },
  {
    name: 'tank',
    repo: 'tank-thickness-calculator.git',
    module: 'TankThicknessCalculator.Calculator',
    function: 'submit_tank_thickness_calculation_to_sage',
  },
  {
    name: 'tankSettlement',
    repo: 'tank-settlement-calculator.git',
    module: 'TankSettlementCalculator.Calculator',
    function: 'submit_tank_settlement_calculation_to_sage',
  },
  {
    name: 'bijlaard',
    repo: 'bijlaard-calculator.git',
    module: 'calculator.bijlaard_calculator',
    function: 'submit_bijlaard_calc_to_sage',
  },
  {
    name: 'storedEnergy',
    repo: 'stored-energy-calculator.git',
    module: 'StoredEnergyCalculator.StoredEnergy',
    function: 'calculate_stored_energy',
  },
  {
    name: 'sageX',
    repo: 'sage-x-calculator.git',
    module: 'sageLimitlessCalculator.calculate',
    function: 'submit_calculation_to_sage',
  },
  {
    name: 'inspectionReport',
    repo: 'inspection-report-calculator.git',
    module: 'inspectionReportGenerator.InspectionReport',
    function: 'generate_inspection_report',
    noSync: true,
  },
  {
    name: 'thermowell',
    repo: 'thermowells-calculator.git',
    module: 'thermowells_Calculator.ThermowellsCalculator',
    function: 'calculate_ThermoWell',
  },
  {
    name: 'asme-b31g-ccx',
    repo: 'worker-asme-b31g-ccx.git',
    deprecated: true,
  },
  {
    name: 'calculix',
    repo: 'worker-calculix.git',
    deprecated: true,
  },
  {
    name: 'frdtoex2',
    repo: 'worker-frdtoex2.git',
    deprecated: true,
  },
  {
    name: 'gmsh',
    repo: 'worker-gmsh.git',
    deprecated: true,
  },
]

const calcsByRepo = libpyConfig.reduce(
  (acc, conf) => {
    if (conf.deprecated) return acc
    const repoName = conf.repo.replace(/\.git$/, '')
    acc[repoName] = {
      imageName: conf.imageName || kebab(conf.name),
      serviceName: conf.serviceName || kebab(conf.name),
      noSync: conf.noSync,
      deploymentRepo: conf.deploymentRepo || 'eec-kustomize',
      enableBayesContainers: conf.enableBayesContainers,
      notArmCompatible: conf.notArmCompatible,
    }
    return acc
  },
  {} as Record<string, CalcConfig>,
)

export const calculators: Record<string, CalcConfig> = {
  ...calcsByRepo,
  'tbreak-calculator': {
    imageName: 'tbreak',
    serviceName: 'tbreak',
    deploymentRepo: 'eec-kustomize',
    trame: true,
  },
  'idinterp-calculator': {
    imageName: 'idinterp',
    serviceName: 'idinterp',
    deploymentRepo: 'eec-kustomize',
  },
  'pvelite-converter-calculator': {
    imageName: 'pvelite-converter',
    serviceName: 'pvelite-converter',
    deploymentRepo: 'eec-kustomize',
  },
  'plume-calculator': {
    imageName: 'plume',
    serviceName: 'plume',
    deploymentRepo: 'eec-kustomize',
    trame: true,
  },
  'cui-calculator': {
    imageName: 'cui-sight',
    serviceName: 'cui-sight',
    deploymentRepo: 'eec-kustomize',
    enableBayesContainers: true,
  },
  'bundle-sight-calculator': {
    imageName: 'bundle-sight',
    serviceName: 'bundle-sight',
    deploymentRepo: 'eec-kustomize',
    enableBayesContainers: true,
  },
  'plausible-profiles-calculator': {
    imageName: 'plausible-profiles',
    serviceName: 'plausible-profiles',
    deploymentRepo: 'eec-kustomize',
    notArmCompatible: true,
  },
  // 'bayes-worker-calculator': {
  //   imageName: 'bayes-worker',
  //   serviceName: 'bayes-worker',
  //   deploymentRepo: 'eec-kustomize',
  // },
  'bengi-worker-calculator': {
    imageName: 'bengi-worker',
    serviceName: 'bengi-worker',
    deploymentRepo: 'eec-kustomize',
  },
  'netica-worker-calculator': {
    imageName: 'netica-worker',
    serviceName: 'netica-worker',
    deploymentRepo: 'eec-kustomize',
  },
  'crack-attack-calculator': {
    imageName: 'crack-attack',
    serviceName: 'crack-attack',
    deploymentRepo: 'eec-kustomize',
    trame: true,
  },
  'van-winkle-calculator': {
    imageName: 'van-winkle',
    serviceName: 'van-winkle',
    deploymentRepo: 'eec-kustomize',
  },
  'rainflow-calculator': {
    imageName: 'rainflow',
    serviceName: 'rainflow',
    deploymentRepo: 'eec-kustomize',
  },
  'ffs-lta-calculator': {
    imageName: 'ffs-lta',
    serviceName: 'ffs-lta',
    deploymentRepo: 'eec-kustomize',
    remoteFEA: true,
    notArmCompatible: true,
    deployAzure: true,
  },
  'feature-identification-calculator': {
    imageName: 'feature-identification',
    serviceName: 'feature-identification',
    deploymentRepo: 'eec-kustomize',
  },
  'api-1183-calculator': {
    imageName: 'api-1183',
    serviceName: 'api1183',
    deploymentRepo: 'eec-kustomize',
  },
  'damage-sight-calculator': {
    imageName: 'damage-sight',
    serviceName: 'damage-sight',
    deploymentRepo: 'eec-kustomize',
    enableBayesContainers: true,
  },
  'circuit-corrosion-calculator': {
    imageName: 'circuit-corrosion',
    serviceName: 'circuit-corrosion',
    deploymentRepo: 'eec-kustomize',
  },
  'dent-fea-calculator': {
    imageName: 'dent-fea',
    serviceName: 'dent-fea',
    deploymentRepo: 'eec-kustomize',
    remoteFEA: true,
    notArmCompatible: true,
    deployAzure: true,
  },
  'tank-settlement-fea-calculator': {
    imageName: 'tank-settlement-fea',
    serviceName: 'tank-settlement-fea',
    deploymentRepo: 'eec-kustomize',
    remoteFEA: true,
    notArmCompatible: true,
    deployAzure: true,
  },
  'large-lta-calculator': {
    imageName: 'large-lta',
    serviceName: 'large-lta',
    deploymentRepo: 'eec-kustomize',
  },
  'calculix-worker-calculator': {
    imageName: 'calculix-worker',
    serviceName: 'calculix-worker',
    deploymentRepo: 'eec-kustomize',
    notArmCompatible: true,
  },
  'salome-worker-calculator': {
    imageName: 'salome-worker',
    serviceName: 'salome-worker',
    deploymentRepo: 'eec-kustomize',
    notArmCompatible: true,
  },
  'fea-visualization-calculator': {
    imageName: 'fea-visualization',
    serviceName: 'fea-visualization',
    deploymentRepo: 'eec-kustomize',
    trame: true,
    notArmCompatible: true,
    deployAzure: true,
  },
  'rbi-plus-calculator': {
    imageName: 'rbi-plus',
    serviceName: 'rbi-plus',
    deploymentRepo: 'eec-kustomize',
  },
  'sandman-calculator': {
    imageName: 'sandman',
    serviceName: 'sandman',
    deploymentRepo: 'eec-kustomize',
  },
  'in-sight-calculator': {
    imageName: 'in-sight',
    serviceName: 'in-sight',
    deploymentRepo: 'eec-kustomize',
  },
  'tank-sight-calculator': {
    imageName: 'tank-sight',
    serviceName: 'tank-sight',
    deploymentRepo: 'eec-kustomize',
  },
  'simflex-converters-calculator': {
    imageName: 'simflex-converters',
    serviceName: 'simflex-converters',
    deploymentRepo: 'eec-kustomize',
  },
  'nozzle-fea-calculator': {
    imageName: 'nozzle-fea',
    serviceName: 'nozzle-fea',
    deploymentRepo: 'eec-kustomize',
    remoteFEA: true,
    notArmCompatible: true,
  },
  'ncpv-nozzle-fea-calculator': {
    imageName: 'ncpv-nozzle-fea',
    serviceName: 'ncpv-nozzle-fea',
    deploymentRepo: 'eec-kustomize',
    remoteFEA: true,
    notArmCompatible: true,
  },
  'deep-thought-calculator': {
    imageName: 'deep-thought',
    serviceName: 'deep-thought',
    deploymentRepo: 'eec-kustomize',
  },
  'coke-drum-fea-calculator': {
    imageName: 'coke-drum-fea',
    serviceName: 'coke-drum-fea',
    deploymentRepo: 'eec-kustomize',
    remoteFEA: true,
    notArmCompatible: true,
  },
  'van-winkgo-calculator': {
    imageName: 'van-winkgo',
    serviceName: 'van-winkgo',
    deploymentRepo: 'eec-kustomize',
    noSync: true,
  },
  'asset-batch-jobs-calculator': {
    imageName: 'asset-batch-jobs',
    serviceName: 'asset-batch-jobs',
    deploymentRepo: 'eec-kustomize',
  },
  'snooze-fest-calculator': {
    imageName: 'snooze-fest',
    serviceName: 'snooze-fest',
    deploymentRepo: 'eec-kustomize',
  },
  'sage-api-worker-calculator': {
    imageName: 'sage-api-worker',
    serviceName: 'sage-api-worker',
    deploymentRepo: 'eec-kustomize',
  },
  'sphere-legs-fea-calculator': {
    imageName: 'sphere-legs-fea',
    serviceName: 'sphere-legs-fea',
    deploymentRepo: 'eec-kustomize',
    remoteFEA: true,
    notArmCompatible: true,
  },
}

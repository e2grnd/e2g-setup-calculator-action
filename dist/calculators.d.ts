export declare type CalcConfig = {
    /**
     * The name of the container image in the registry
     */
    imageName: string;
    /**
     * The name of the service directory in the kustomize repo
     */
    serviceName: string;
    /**
     * If true, the repo is omitted from the sync config and the syncing of common
     * support files (actions) to the repo will be disabled.
     */
    noSync?: boolean;
    /**
     * The target deployment repo name
     * @default false
     */
    deploymentRepo: 'eec-kustomize' | 'can2-kustomize' | 'corrsolutions-kustomize';
    /**
     * Syncs the bayes docker compose configuration in addition to base.
     * @default false
     */
    enableBayesContainers?: boolean;
    /**
     * If true, syncs the trame github action for building the visualization image.
     */
    trame?: boolean;
    /**
     * If true, syncs the
     */
    remoteFEA?: boolean;
};
export declare const calculators: Record<string, CalcConfig>;

/* eslint-disable @typescript-eslint/no-unused-vars */
import fsAll from 'fs'
/* eslint-disable github/array-foreach */
import {calculators} from './calculators'

const fs = fsAll.promises

async function run(): Promise<void> {
  let scr = `#!/bin/bash
mkdir -p ~/Projects/all-calculators
cd ~/Projects/all-calculators
`
  Object.entries(calculators)
    .filter(
      ([repoName, calcConfig]) => calcConfig.deploymentRepo === 'eec-kustomize',
    )
    .sort((a, b) => {
      return a[1].serviceName.localeCompare(b[1].serviceName)
    })
    .forEach(([repoName, calcConfig]) => {
      scr += `git -C ${repoName} checkout release/stage && git -C ${repoName} merge release/dev && git -C ${repoName} push\n`
    })
  await fs.mkdir('etc', {recursive: true})
  await fs.writeFile('etc/promote-to-stage.sh', scr)
}

run()
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
    .sort((a, b) => {
      return a[1].serviceName.localeCompare(b[1].serviceName)
    })
    .forEach(([repoName, calcConfig]) => {
      scr += `echo "\n\n----- START ${repoName} -----"; git -C ${repoName} checkout release/dev || git clone 'git@github.com:e2grnd/${repoName}.git' && git -C ${repoName} pull\n`
    })
  await fs.mkdir('etc', {recursive: true})
  await fs.writeFile('etc/clone-all-calculators.sh', scr)
}

run()

/* eslint-disable @typescript-eslint/no-unused-vars */
import fsAll from 'node:fs'
import { calculators } from './calculators'

const fs = fsAll.promises

async function run(): Promise<void> {
  const calcs = Object.entries(calculators)
    .sort((a, b) => {
      return a[1].serviceName.localeCompare(b[1].serviceName)
    })
    .map(([repoName, calcConfig]) => calcConfig.serviceName)
  const scr = `#!/bin/bash
${calcs.map((sn) => `kubectl rollout restart -n dev deployment/${sn}`).join('\n')}
`
  await fs.mkdir('etc', { recursive: true })
  await fs.writeFile('etc/rollout-restart.sh', scr)
}

run()

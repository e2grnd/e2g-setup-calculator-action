import fsAll from 'node:fs'
import { calculators } from './calculators'

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
      scr += `echo "\n\n----- START ${repoName} -----"; cd ~/Projects/all-calculators/${repoName}; git add .; git commit -m"pip list during container build"; git push; cd ~/Projects/all-calculators\n`
    })
  await fs.mkdir('etc', { recursive: true })
  await fs.writeFile('etc/mass-commit.sh', scr)
}

run()

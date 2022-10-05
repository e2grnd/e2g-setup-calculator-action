import fsAll from 'fs'
/* eslint-disable github/array-foreach */
import {calculators} from './calculators'

const fs = fsAll.promises

async function run(): Promise<void> {
  let md = '# Calculator Repo Publish Action Status\n\n---\n\n'
  Object.entries(calculators)
    .sort((a, b) => {
      return a[1].serviceName.localeCompare(b[1].serviceName)
    })
    .forEach(([repoName, calcConfig]) => {
      md += `- ${calcConfig.serviceName}: [![${calcConfig.serviceName}](https://github.com/e2grnd/${repoName}/actions/workflows/publish.yml/badge.svg)](https://github.com/e2grnd/${repoName}/actions/workflows/publish.yml)\n\n`
    })
  await fs.writeFile('status.md', md)
}

run()
